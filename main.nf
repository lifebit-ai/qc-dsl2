#!/usr/bin/env nextflow

nextflow.preview.dsl=2

include fastqc from './modules/fastqc'
include multiqc from './modules/multiqc'

workflow {
    main
        reads = Channel.fromFilePairs( params.reads, size: params.singleEnd ? 1 : 2 )
        fastqc(reads)
        multiqc(fastqc.out)
    publish:
        fastqc.out to: "${params.outdir}/FastQC", mode: 'copy'
        multiqc.out to: "${params.outdir}/MultiQC", mode: 'copy'
}

