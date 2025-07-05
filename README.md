# Chromosome-level sequences of wild *Salicornia* reveal diversity for domestication and unique salt tolerance mechanisms

This repository contains the code, data, and analysis pipelines associated with our study on wild *Salicornia* species. We assembled chromosome-level genomes and performed comparative genomic and transcriptomic analyses to investigate salt tolerance mechanisms and provide resources for domestication and breeding.

We present six distinct genome assemblies, evidence for whole-genome triploidization, and intra-family transcriptomic comparisons. These resources offer valuable insights into the evolution and adaptation of *Salicornia*, a halophytic crop with exceptional sodium accumulation capacity.

---

## 📁 Repository Structure

### `Genome_assembly/`  
Contains scripts used in the assembly of *Salicornia* genomes.

### `Whole_genome_triploidization_and_divergence_event_analysis/`  
Includes all scripts for synonymous substitution rate (Ks) analysis to identify whole-genome triploidization and species divergence events.  
Ks values are calculated using the open-source WGDI pipeline ([WGDI GitHub](https://github.com/SunPengChuan/WGDI)).  
Instructions for visualization.

### `intra_family_transcriptomic_comparisons/`  
Provides a complete pipeline for cross-species transcriptomic analysis, including:
- Raw transcriptome quantification data (FPKM)
- Differential gene expression results using DESeq2
- Homologous gene clustering results from OrthoFinder
- Downstream analysis scripts and figure generation code

---

## 🛠️ Installation

To run the scripts and analyses for Whole_genome_triploidization_and_divergence_event_analysis and intra_family_transcriptomic_comparisons, clone the repository and install the required dependencies:

```bash
git clone https://github.com/supermanwasd/Salicornia-genome.git
cd Salicornia-genome
pip install -r requirements.txt
