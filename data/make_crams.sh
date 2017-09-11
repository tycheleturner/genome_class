#!/bin/bash
mkdir -p genomes

module load modules modules-init modules-gs
module load samtools/1.4

genomeReference='/path/to/human_g1k_v37.fasta'

#ids: NIST IDs: HG002/HG003/HG004 (Son/Father/Mother)

###~~~~~~~~~~~~~~~genome~~~~~~~~~~~~~~~###
samtools view -C -T "$genomeReference" ../realign_genome_bam/AJfamily.p1.realign.bam -o genomes/AJfamily.p1.final.cram
samtools index genomes/AJfamily.p1.final.cram

samtools view -C -T "$genomeReference" ../realign_genome_bam/AJfamily.fa.realign.bam -o genomes/AJfamily.fa.final.cram
samtools index genomes/AJfamily.fa.final.cram

samtools view -C -T "$genomeReference" ../realign_genome_bam/AJfamily.mo.realign.bam -o genomes/AJfamily.mo.final.cram
samtools index genomes/AJfamily.mo.final.cram

