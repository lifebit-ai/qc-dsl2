#!/usr/bin/env nextflow

/*--------------------------------------------------
  Run FastQC for quality control of input reads
---------------------------------------------------*/

process fastqc {
  tag "$name"
  
  input:
  set val(name), file(reads)

  output:
  file "*_fastqc.{zip,html}"

  script:
  """
  fastqc $reads
  """
}