#!/usr/bin/env nextflow

/*--------------------------------------------------
  Run MultiQC to generate an output HTML report
---------------------------------------------------*/

process multiqc {

    input:
    file ('fastqc/*')

    output:
    file "*multiqc_report.html"
    file "*_data"

    script:
    """
    multiqc . -m fastqc
    """
}