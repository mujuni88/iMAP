mkdir data
mkdir data/references
bash code/seqprocessing/00_add_pseudo_mock.bash
mothur code/seqprocessing/01_assemble_paired_reads.batch
mothur code/seqprocessing/02_align_for_16S_consensus.batch
mothur code/seqprocessing/03_perform_alignment_QC.batch
mothur code/seqprocessing/04_remove_chimeras.batch

