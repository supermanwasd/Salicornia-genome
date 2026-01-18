module load syri

ref=Salicornia_europaea_Israel.chr9.seq.fasta
minimap2 -t 120 -ax asm5 --eqx $ref Salicronia_sinus_persica.chr9.seq.fasta > sinus.sam
syri -c persica.sam -r $ref -q Salicornia_persica_ssp_iranica.chr9.seq.fasta -k -F S


awk '$3=="gene" {
    OFS="\t";
    print $1, $4-1, $5, $9
}' Salicornia_europaea_Israel.gff3 > Salicornia_europaea_Israel.genes.bed


awk '$3=="exon" {
    OFS="\t";
    print $1, $4-1, $5, $9
}' Salicornia_europaea_Israel.gff3 > Salicornia_europaea_Israel.exons.bed

bedtools subtract -a Salicornia_europaea_Israel.genes.bed -b Salicornia_europaea_Israel.exons.bed > Salicornia_europaea_Israel.introns.bed

awk '$4 != "INVAL"' syri.SVs.50bp.bed > syri.SVs.50bp.noINVAL.bed
bedtools intersect -a syri.SVs.50bp.noINVAL.bed -b ../Salicornia_europaea_Israel.exons.bed -u > SV_exonic.bed
bedtools intersect -a syri.SVs.50bp.noINVAL.bed -b ../Salicornia_europaea_Israel.introns.bed -u | bedtools intersect -a - -b ../Salicornia_europaea_Israel.exons.bed -v > SV_intronic.bed
bedtools intersect -a syri.SVs.50bp.noINVAL.bed -b ../Salicornia_europaea_Israel.genes.bed -v > SV_intergenic.bed
TOTAL=$(wc -l < syri.SVs.50bp.noINVAL.bed)
EXON=$(wc -l < SV_exonic.bed)
INTRON=$(wc -l < SV_intronic.bed)
INTER=$(wc -l < SV_intergenic.bed)

echo $TOTAL
echo $((EXON + INTRON + INTER))
echo $EXON
echo $INTRON
echo $INTER
echo -e "Exonic\t$EXON\t$(awk -v e=$EXON -v t=$TOTAL 'BEGIN{printf "%.2f", e/t*100}')"
echo -e "Intronic\t$INTRON\t$(awk -v i=$INTRON -v t=$TOTAL 'BEGIN{printf "%.2f", i/t*100}')"
echo -e "Intergenic\t$INTER\t$(awk -v g=$INTER -v t=$TOTAL 'BEGIN{printf "%.2f", g/t*100}')"

bedtools intersect -a ../Salicornia_europaea_Israel.exons.bed -b syri.SVs.50bp.noINVAL.bed -wa -u > SV_exon_genes.bed
awk -F'\t' '{ 
    split($4,a,"gene_id="); 
    split(a[2],b,";"); 
    print b[1] 
}' SV_exon_genes.bed | sort -u > SV_exon_gene_ids.txt