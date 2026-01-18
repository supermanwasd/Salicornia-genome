module load ltr_finder/1.0.7

xx=genome.fasta

ltr_finder -D 40000 -d 100 -L 9000 -l 50 -p 20 -C -M 0.9 $xx > $xx.scan