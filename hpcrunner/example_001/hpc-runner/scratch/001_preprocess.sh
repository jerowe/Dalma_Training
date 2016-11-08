#!/bin/bash
#
#SBATCH --share
#SBATCH --job-name=001_preprocess
#SBATCH --output=/scratch/gencore/nov_dalma_training/example_001/hpc-runner/logs/2016-11-03-hpcrunner_logs/001_preprocess.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --ntasks-per-node=1
#SBATCH --mem=10GB
#SBATCH --time=00:00:30
#SBATCH --array=1-6


module load gencore/1 gencore_dev
cd /scratch/gencore/nov_dalma_training/example_001
hpcrunner.pl execute_array \
	--procs 1 \
	--outdir /scratch/gencore/nov_dalma_training/example_001/hpc-runner/scratch \
	--logname 001_preprocess \
	--process_table /scratch/gencore/nov_dalma_training/example_001/hpc-runner/logs/2016-11-03-hpcrunner_logs/001-process_table.md \
	--metastr '{"commands":1,"batch":"001","array_end":"6","jobname":"preprocess","job_counter":"001","total_batches":6,"total_jobs":1,"total_processes":6,"array_start":"1"}'