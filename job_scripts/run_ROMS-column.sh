#!/bin/bash
#SBATCH --job-name=ROMS-column
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=24G
#SBATCH --time=08:00:00
#SBATCH --partition=cluster

# make sure we have Singularity
module load singularity/3.5.2

# to get the image (need to be on a partition which has internet access --> data), run
# $ singularity pull --disable-cache --dir "${PWD}" docker://quay.io/willirath/parcels-container:2022.07.14-801fbe4

# make sure the output exists
mkdir -p notebooks_executed

for start_month in 1; do
    for start_day in 1 6 11 16 21 26 31; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 2; do
    for start_day in 5 10 15 20 25; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 3; do
    for start_day in 2 7 12 17 22 27; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 4; do
    for start_day in 1 6 11 16 21 26; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 5; do
    for start_day in 1 6 11 16 21 26 31; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 6; do
    for start_day in 5 10 15 20 25 30; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 7; do
    for start_day in 5 10 15 20 25 30; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 8; do
    for start_day in 4 9 14 19 24 29; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 9; do
    for start_day in 3 8 13 18 23 28; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 10; do
    for start_day in 3 8 13 18 23 28; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 11; do
    for start_day in 2 7 12 17 22 27; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 12; do
    for start_day in 2 7 12 17 22 27; do
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/preliminary-experiment/2023-09-29_ROMS-track.ipynb \
            notebooks_executed/preliminary-experiment/2023-09-29_ROMS-track_S-test_1500_N-100000-2009-${start_month}-${start_day}_RT-42.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done


# wait till background task is done
wait

# print resource infos
jobinfo
