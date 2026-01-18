module load repeatmodeler/2.0.5
BuildDatabase -name genome  -engine ncbi genome.fasta
RepeatModeler -database genome -engine ncbi -threads 40

module load repeatmasker/4.1.4
can=genome-families.fa
genome=genome.fasta
RepeatMasker -xsmall -lib $can -s -no_id -cutoff 255 -frag 20000 -pa 40 -e ncbi -gff -dir .  $genome

T=40
genome=genome.fasta.masked
bam=genome.bam
module load singularity
singularity exec -B ${PWD}:${PWD} braker3_lr.sif braker.pl --AUGUSTUS_CONFIG_PATH=augustus --genome=$genome --prot_seq=f_protiens.fa --bam=$bam --threads=${T}