#!/bin/bash
#SBATCH --job-name=retention-tides
#SBATCH --ntasks=73
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=24G
#SBATCH --time=00:15:00
#SBATCH --partition=cluster

# make sure we have Singularity
module load singularity/3.5.2

# to get the image (need to be on a partition which has internet access --> data), run
# $ singularity pull --disable-cache --dir "${PWD}" docker://quay.io/willirath/parcels-container:2022.07.14-801fbe4

# make sure the output exists
mkdir -p notebooks_executed/preliminary-experiment/retention

for start_month in 1; do
    for start_day in 1 6 11 16 21 26 31; do #1 6 11 16 21 26 31
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 8; do
    for start_day in 4 9 14 19 24 29; do #4 9 14 19 24 29
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done

for start_month in 9; do
    for start_day in 3 8 13 18 23 28; do #3 8 13 18 23 28
    # run for single notebook and put into background
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
        ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
        && papermill --cwd notebooks \
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
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
            notebooks/retention/2023-10-04_retention-tides.ipynb \
            notebooks_executed/tides/retention/2023-10-04_retention-2009-${start_month}-${start_day}.ipynb \
            -p start_month ${start_month} \
            -p start_day ${start_day} \
            -k python" &
    done
done


# wait till background task is done
wait

# print resource infos
jobinfo
