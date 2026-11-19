#!/bin/bash
mkdir -p trimmed_data
cd fastq_files
for r1 in *_1.fastq; do
  r2="${r1%_1.fastq}_2.fastq"
  fastp -i "$r1" -I "$r2" \
        -o "/home/matthew/e_oyster/project_2/trimmed_data/trimmed_${r1}" -O "/home/matthew/e_oyster/project_2/trimmed_data/trimmed_${r2}" \
        --html "${r1%.fastq}.html" 
done