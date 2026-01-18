makeblastdb -in AtOS_Dehydrin.fa  -dbtype prot

blastp -num_threads 60 -query ../kau3286.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kau3286.blastout
blastp -num_threads 60 -query ../kau3287.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kau3287.blastout
blastp -num_threads 60 -query ../kau3288.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kau3288.blastout
blastp -num_threads 60 -query ../kin3564.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kin3564.blastout
blastp -num_threads 60 -query ../kin3565.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kin3565.blastout
blastp -num_threads 60 -query ../kin4237.l.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out kin4237.blastout
blastp -num_threads 60 -query ../Amaranthus_Cruentus.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Amaranthus_Cruentus.blastout
blastp -num_threads 60 -query ../Amaranthus_hypochondriacus.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Amaranthus_hypochondriacus.blastout
blastp -num_threads 60 -query ../Atriplex_hortensis_longest.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Atriplex_hortensis_longest.blastout
blastp -num_threads 60 -query ../Beta_patula.longest.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Beta_patula.longest.blastout
blastp -num_threads 60 -query ../Beta_vulgaris_longest.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Beta_vulgaris_longest.blastout
blastp -num_threads 60 -query ../Chenopodium_quinoa_longest.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Chenopodium_quinoa_longest.blastout
blastp -num_threads 60 -query ../Haloxylon_ammodendron.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Haloxylon_ammodendron.blastout
blastp -num_threads 60 -query ../Oryza_sativa_longest.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Oryza_sativa_longest.blastout
blastp -num_threads 60 -query ../Spinacia_oleracea.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Spinacia_oleracea.blastout
blastp -num_threads 60 -query ../Spinacia_tetrandra.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Spinacia_tetrandra.blastout
blastp -num_threads 60 -query ../Spinacia_turkestanica.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Spinacia_turkestanica.blastout
blastp -num_threads 60 -query ../Suaeda_glauca.pep -db blast_database/AtOS_Dehydrin.fa   -evalue 1e-5   -outfmt '6 std qlen slen' -out Suaeda_glauca.blastout

awk ' $3 > 30 {print $1} ' kau3286.blastout |   sort -u > kau3286.blastout.filter.id
awk ' $3 > 30 {print $1} ' kau3287.blastout |   sort -u > kau3287.blastout.filter.id
awk ' $3 > 30 {print $1} ' kau3288.blastout |   sort -u > kau3288.blastout.filter.id
awk ' $3 > 30 {print $1} ' kin3564.blastout |   sort -u > kin3564.blastout.filter.id
awk ' $3 > 30 {print $1} ' kin3565.blastout |   sort -u > kin3565.blastout.filter.id
awk ' $3 > 30 {print $1} ' kin4237.blastout |   sort -u > kin4237.blastout.filter.id
awk ' $3 > 30 {print $1} ' Amaranthus_Cruentus.blastout |   sort -u > Amaranthus_Cruentus.blastout.filter.id
awk ' $3 > 30 {print $1} ' Amaranthus_hypochondriacus.blastout |   sort -u > Amaranthus_hypochondriacus.blastout.filter.id
awk ' $3 > 30 {print $1} ' Atriplex_hortensis_longest.blastout |   sort -u > Atriplex_hortensis_longest.blastout.filter.id
awk ' $3 > 30 {print $1} ' Beta_patula.longest.blastout |   sort -u > Beta_patula.longest.blastout.filter.id
awk ' $3 > 30 {print $1} ' Beta_vulgaris_longest.blastout |   sort -u > Beta_vulgaris_longest.blastout.filter.id
awk ' $3 > 30 {print $1} ' Chenopodium_quinoa_longest.blastout |   sort -u > Chenopodium_quinoa_longest.blastout.filter.id
awk ' $3 > 30 {print $1} ' Haloxylon_ammodendron.blastout |   sort -u > Haloxylon_ammodendron.blastout.filter.id
awk ' $3 > 30 {print $1} ' Oryza_sativa_longest.blastout |   sort -u > Oryza_sativa_longest.blastout.filter.id
awk ' $3 > 30 {print $1} ' Spinacia_oleracea.blastout |   sort -u > Spinacia_oleracea.blastout.filter.id
awk ' $3 > 30 {print $1} ' Spinacia_tetrandra.blastout |   sort -u > Spinacia_tetrandra.blastout.filter.id
awk ' $3 > 30 {print $1} ' Spinacia_turkestanica.blastout |   sort -u > Spinacia_turkestanica.blastout.filter.id
awk ' $3 > 30 {print $1} ' Suaeda_glauca.blastout |   sort -u > Suaeda_glauca.blastout.filter.id

hmmsearch -E 1000 -Z 81514348  --domtblout kau3286.domtblout -o kau3286.PF00257 --cpu 4 PF00257.hmm ../kau3286.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout kau3287.domtblout  -o kau3287.PF00257 --cpu 4 PF00257.hmm ../kau3287.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout kau3288.domtblout  -o kau3288.PF00257 --cpu 4 PF00257.hmm ../kau3288.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout kin3564.domtblout  -o kin3564.PF00257 --cpu 4 PF00257.hmm ../kin3564.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout kin3565.domtblout  -o kin3565.PF00257 --cpu 4 PF00257.hmm ../kin3565.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout kin4237.domtblout  -o kin4237.PF00257 --cpu 4 PF00257.hmm ../kin4237.l.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Suaeda_glauca.domtblout  -o Suaeda_glauca.PF00257 --cpu 4 PF00257.hmm ../Suaeda_glauca.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Amaranthus_Cruentus.domtblout  -o Amaranthus_Cruentus.PF00257 --cpu 4 PF00257.hmm ../Amaranthus_Cruentus.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Amaranthus_hypochondriacus.domtblout  -o Amaranthus_hypochondriacus.PF00257 --cpu 4 PF00257.hmm ../Amaranthus_hypochondriacus.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Atriplex_hortensis_longest.domtblout  -o Atriplex_hortensis_longest.PF00257 --cpu 4 PF00257.hmm ../Atriplex_hortensis_longest.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Beta_patula.domtblout  -o Beta_patula.longest.PF00257 --cpu 4 PF00257.hmm ../Beta_patula.longest.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Beta_vulgaris_longest.domtblout  -o Beta_vulgaris_longest.PF00257 --cpu 4 PF00257.hmm ../Beta_vulgaris_longest.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Haloxylon_ammodendron.domtblout  -o Haloxylon_ammodendron.PF00257 --cpu 4 PF00257.hmm ../Haloxylon_ammodendron.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Spinacia_oleracea.domtblout  -o Spinacia_oleracea.PF00257 --cpu 4 PF00257.hmm ../Spinacia_oleracea.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Spinacia_tetrandra.domtblout  -o Spinacia_tetrandra.PF00257 --cpu 4 PF00257.hmm ../Spinacia_tetrandra.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Spinacia_turkestanica.domtblout  -o Spinacia_turkestanica.PF00257 --cpu 4 PF00257.hmm ../Spinacia_turkestanica.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Oryza_sativa_longest.domtblout  -o Oryza_sativa_longest.PF00257 --cpu 4 PF00257.hmm ../Oryza_sativa_longest.pep
hmmsearch -E 1000 -Z 81514348  --domtblout Chenopodium_quinoa_longest.domtblout  -o Chenopodium_quinoa_longest.PF00257 --cpu 4 PF00257.hmm ../Chenopodium_quinoa_longest.pep

makeblastdb -in AtOSAKT.fa  -dbtype prot


seqkit grep -f Oryza_sativa_longest.geneID ../Oryza_sativa_longest.pep > Oryza_sativa_longest.family.fa
seqkit grep -f Amaranthus_Cruentus.geneID ../Amaranthus_Cruentus.pep > Amaranthus_Cruentus.family.fa
seqkit grep -f Amaranthus_hypochondriacus.geneID ../Amaranthus_hypochondriacus.pep > Amaranthus_hypochondriacus.family.fa
seqkit grep -f Atriplex_hortensis_longest.geneID ../Atriplex_hortensis_longest.pep > Atriplex_hortensis_longest.family.fa
seqkit grep -f Beta_patula.geneID ../Beta_patula.longest.pep > Beta_patula.family.fa
seqkit grep -f Beta_vulgaris_longest.geneID ../Beta_vulgaris_longest.pep > Beta_vulgaris_longest.family.fa
seqkit grep -f Chenopodium_quinoa_longest.geneID ../Chenopodium_quinoa_longest.pep > Chenopodium_quinoa_longest.family.fa
seqkit grep -f Haloxylon_ammodendron.geneID ../Haloxylon_ammodendron.pep > Haloxylon_ammodendron.family.fa
seqkit grep -f Spinacia_oleracea.geneID ../Spinacia_oleracea.pep > Spinacia_oleracea.family.fa
seqkit grep -f Spinacia_tetrandra.geneID ../Spinacia_tetrandra.pep > Spinacia_tetrandra.family.fa
seqkit grep -f Spinacia_turkestanica.geneID ../Spinacia_turkestanica.pep > Spinacia_turkestanica.family.fa
seqkit grep -f Suaeda_glauca.geneID ../Suaeda_glauca.pep > Suaeda_glauca.family.fa
seqkit grep -f kau3286.geneID ../kau3286.l.pep > kau3286.family.fa
seqkit grep -f kau3287.geneID ../kau3287.l.pep > kau3287.family.fa
seqkit grep -f kau3288.geneID ../kau3288.l.pep > kau3288.family.fa
seqkit grep -f kin3564.geneID ../kin3564.l.pep > kin3564.family.fa
seqkit grep -f kin3565.geneID ../kin3565.l.pep > kin3565.family.fa
seqkit grep -f kin4237.geneID ../kin4237.l.pep > kin4237.family.fa

sed 's/^>/>Os_/' Oryza_sativa_longest.family.fa > Oryza_sativa_longest.family.sp.fa
sed 's/^>/>Ac_/' Amaranthus_Cruentus.family.fa > Amaranthus_Cruentus.family.sp.fa
sed 's/^>/>Ah_/' Amaranthus_hypochondriacus.family.fa > Amaranthus_hypochondriacus.family.sp.fa
sed 's/^>/>Ath_/' Atriplex_hortensis_longest.family.fa > Atriplex_hortensis_longest.family.sp.fa
sed 's/^>/>Bp_/' Beta_patula.family.fa > Beta_patula.family.sp.fa
sed 's/^>/>Bv_/' Beta_vulgaris_longest.family.fa > Beta_vulgaris_longest.family.sp.fa
sed 's/^>/>Cq_/' Chenopodium_quinoa_longest.family.fa > Chenopodium_quinoa_longest.family.sp.fa
sed 's/^>/>Ha_/' Haloxylon_ammodendron.family.fa > Haloxylon_ammodendron.family.sp.fa
sed 's/^>/>SPo_/' Spinacia_oleracea.family.fa > Spinacia_oleracea.family.sp.fa
sed 's/^>/>SPte_/' Spinacia_tetrandra.family.fa > Spinacia_tetrandra.family.sp.fa
sed 's/^>/>SPtu_/' Spinacia_turkestanica.family.fa > Spinacia_turkestanica.family.sp.fa
sed 's/^>/>SuG_/' Suaeda_glauca.family.fa > Suaeda_glauca.family.sp.fa
sed 's/^>/>Sbig_/' kau3286.family.fa > kau3286.family.sp.fa
sed 's/^>/>Seu_/' kau3287.family.fa > kau3287.family.sp.fa
sed 's/^>/>Sper_/' kau3288.family.fa > kau3288.family.sp.fa
sed 's/^>/>SeuF_/' kin3564.family.fa > kin3564.family.sp.fa
sed 's/^>/>Sbra_/' kin3565.family.fa > kin3565.family.sp.fa
sed 's/^>/>Ssinp_/' kin4237.family.fa > kin4237.family.sp.fa

cat *family.sp.fa >> al.fa

muscle -align al.fa -output al.aln.fasta
 
iqtree -s al.aln.fasta -bb 1000 -alrt 1000 -nt 32  -pre all