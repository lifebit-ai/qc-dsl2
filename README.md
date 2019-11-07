# qc-dsl2

Minimal template DSL2 Nextflow pipeline to run quality control (QC) on FastQ files using FastQC & generate an output HTML report using MultiQC

### Dependencies 
- [Nextflow](https://www.nextflow.io/)
- [Docker](https://www.docker.com/)

### Usage:
```bash
NXF_VER=19.08.1-edge nextflow run main.nf --reads "testdata/test.20k_reads_{1,2}.fastq.gz"
```