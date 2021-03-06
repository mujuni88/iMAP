#!/usr/bin/bash

# ## Prepare project folders

mkdir data results
mkdir data reports
mkdir data/raw 
mkdir results/stats 
mkdir results/fastqc
mkdir results/fastqc/qc0
mkdir results/fastqc/qctrim25
mkdir results/fastqc/qced
mkdir results/multiqc
mkdir results/multiqc/qc0
mkdir results/multiqc/qctrim25
mkdir results/multiqc/qced
mkdir results/tables 
mkdir results/figures

## Start pre-processing
bash code/preprocessing/02_get_read_statistics.bash
bash code/preprocessing/03_get_basecall_scores.bash
bash code/preprocessing/04_get_highscore_reads.bash
bash code/preprocessing/05_get_qced_reads.bash
bash code/preprocessing/06_final_seqkit.bash

## Generate pre-processing progress report and save it in file named report2_pre_processing.html
# Rscript -e "rmarkdown::render('./report2.Rmd', clean=TRUE, quiet=FALSE, output_file='report2_pre_processing.html', output_dir='reports')"
