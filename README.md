# Chromosome-level sequences of wild *Salicornia* reveal diversity for domestication and unique salt tolerance mechanisms

This repository contains the code, data, and analysis pipelines associated with our study on wild *Salicornia* species. We assembled chromosome-level genomes and performed comparative genomic and transcriptomic analyses to investigate salt tolerance mechanisms and provide resources for domestication and breeding.

We present six distinct genome assemblies, evidence for whole-genome triploidization, and intra-family transcriptomic comparisons. These resources offer valuable insights into the evolution and adaptation of *Salicornia*, a halophytic crop with exceptional sodium accumulation capacity.

---

## Quick start

* The repository `requirements.txt` (root) lists the Python packages used for notebooks and downstream plotting.

---

## How this README is organized

This README is written in the style of a Methods section for a genome paper. For each major analysis step you will find:

1. A short methodological description (what we did and why).
2. Reproducible commands or notebook entry points (how to run it).
3. Where the code lives in this repository (folder and file patterns).

> **Note:** this repository primarily stores analysis code (Jupyter notebooks, shell wrappers and small helper scripts). Raw sequencing data and large intermediate files are **not** included here — see the manuscript/SRA/ENA accession statements for raw data links.

---


## 📁 Repository Structure

### `01_Genome_assembly/`  
Contains scripts used in the assembly of *Salicornia* genomes.

### `02_Gene_prediction/`  
Contains scripts for gene prediction of *Salicornia* genomes.  
Reference([BRAKER GitHub](https://github.com/Gaius-Augustus/BRAKER)).

### `03_Genome_assembly_quality_assessment/`  
BUSCO, QUAST, k-mer spectra, and other assembly QC analyses.  

### `04_Whole_genome_triploidization_and_divergence_event_analysis/`  
Includes all scripts for synonymous substitution rate (Ks) analysis to identify whole-genome triploidization and species divergence events.  
Ks values are calculated using the open-source WGDI pipeline ([WGDI GitHub](https://github.com/SunPengChuan/WGDI)).  
Instructions for visualization.

### `05_Phylogenetic_tree/`  
ortholog identification, alignments and tree-building notebooks/scripts used for species tree inference.

### `06_Gene_family_analysis/`  
Contains scripts used for gene family analysis of *Salicornia* genomes.

### `07_Structure_varation/`  
Contains scripts used to analyze structural variation in *Salicornia* genomes.


---


## Contact & citation

If you use these scripts or pipelines, please cite the manuscript that accompanies this repository (add the citation here once the paper is published).

---