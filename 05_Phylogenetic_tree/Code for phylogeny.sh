orthofinder -f subtree -S diamond -M msa -T raxml -t 128

trimal  -in SpeciesTreeAlignment.fa -out tree.phy -phylip_paml

mcmctree mcmctree.ctl

codeml  codeml.ctl