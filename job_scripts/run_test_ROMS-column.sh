#!/bin/bash
#SBATCH --job-name=ROMS-column
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=24G
#SBATCH --time=05:00:00
#SBATCH --partition=cluster

# make sure we have Singularity
module load singularity/3.5.2

# to get the image (need to be on a partition which has internet access --> data), run
# $ singularity pull --disable-cache --dir "${PWD}" docker://quay.io/willirath/parcels-container:2022.07.14-801fbe4

# make sure the output exists
mkdir -p notebooks_executed

for number_particles in \
        12000 15000 20000 30000 50000 70000; do
    for release_zone in test_1500; do
        for release_depth in 1500; do
        # run for single notebook and put into background
            srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
            ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
            && papermill --cwd notebooks \
                notebooks/2023-06-02_test-ROMS-column.ipynb \
                notebooks_executed/2023-06-02_test-ROMS-column_S-${release_zone}_N-${number_particles}-20090301_RT-42.ipynb \
                -p release_zone ${release_zone} \
                -p number_particles ${number_particles} \
                -k python" &
        done
    done
done

# wait till background task is done
wait

# print resource infos
jobinfo
