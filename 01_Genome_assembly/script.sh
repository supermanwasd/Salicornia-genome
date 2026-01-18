##########################
#######hifiasm############
##########################
hifiasm -o Salicornia_europaea.asm -t 120 --h1 OmniC-437_R1_001.fastq --h2 OmniC-437_R2_001.fastq  hifi_reads.fasta
bash ./gfa2fasta.sh Salicornia_europaea.asm.hic.p_ctg.gfa > Salicornia_europaea.asm.hic.p_ctg.fa
##########################
#######blobtoolsm#########
##########################
#https://github.com/DRL/blobtools
./blobtools create -i Salicornia_europaea.asm.hic.p_ctg.fa -b example/mapping_1.sorted.bam -t example/blast.out -o example/test && \
./blobtools view -i example/test.blobDB.json && \
./blobtools plot -i example/test.blobDB.json

##########################
##########juicer##########
##########################
bash /home/wangy1j/script/juicer2/juicer/scripts/juicer.sh \
-z Salicornia_europaea.asm.hic.p_ctg.fa \
-p con_len.txt  \
-s none \
-y none \
--assembly \
-d juicer/hifi_hic_work/ \
-D juicer2/juicer/ \
-t 127 

run-asm-pipeline.sh -r 2 Salicornia_europaea.asm.hic.p_ctg.fa hifi_hic_work/aligned/merged_nodups.txt

##########################
##########HapHic##########
##########################
bwa mem -5SP -t 192 $genome $hia $hib| samblaster | samtools view - -@ 128-S -h -b -F 3340 -o HiC.bam
utils/filter_bam HiC.bam 1 --nm 3 --threads 14 | samtools view - -b -@ 14 -o HiC.filtered.bam
haphic pipeline $genome HiC.filtered.bam 18