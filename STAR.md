## RNA-seq Analysis with 

[STAR](http://seqanswers.com/forums/showthread.php?t=27470) uses MMP and execute clustering, stitching, and scoring.


Running STAR with pre-compiled executable:

1. Uncompress STAR
~$ tar –zxvf STAR-STAR_version.tar.gz

2. Locate the correct executable for your OS
~$ cd STAR-STAR_version/bin/chooseYourOS

3. Change file permission of the executable
~$ sudo chmod 755 STAR

4. Add the executable to path
~$ sudo cp STAR /usr/local/bin


[Gencode](http://www.gencodegenes.org/data.html) annotations are recommended for human and mouse in GTF or GFF format.

[data](http://labshare.cshl.edu/shares/gingeraslab/www-data/dobin/STAR/STARgenomes/) for practice

▶Annotation

~$ STAR --runThreadN 8 --runMode genomeGenerate --genomeDir pathToGenome/ --genomeFastaFiles pathToGenome/hg38.fa 
--sjdbGTFfile pathToGTF/gencode.v21.annotation.gtf --sjdbOverhang 100

▶Simple alignment of pair-end reads

~$ STAR --runThreadN 8 --runMode alignReads --genomeDir pathToGenomeIndex/ 
--readFilesIn pathToRNAseqFile/myRNAseqReads_mate1.fastq pathToRNAseqFile/myRNAseqReads_mate2.fastq


▶Alignment output in bam format

Running Mapping Jobs

~$ STAR --runThreadN 8 --runMode alignReads --genomeDir pathToGenomeIndex/ 
--readFilesIn pathToRNAseqFile/myRNAseqReads_mate1.fastq pathToRNAseqFile/myRNAseqReads_mate2.fastq
--*outSAMtype BAM SortedByCoordinate*

RNA-seq aligner: [GSNAP](http://research-pub.gene.com/gmap/), [TopHat2](http://ccb.jhu.edu/software/tophat/index.shtml), [MapSplice](http://www.netlab.uky.edu/p/bioinfo/MapSplice)

▶Moving forward:
* Transcriptome assembly: Cufflinks, HTSeq, Trinity, SOAP, Velvet, Trans-AbySS, Scripture, ERANGE, Oases
* Transcriptome quantification: Cuffdiff (Cufflinks), DESeq, EdgeR, RSEM



---

* Reference: 

[STAR: ultrafast universal RNA-seq aligner](http://bioinformatics.oxfordjournals.org/content/early/2012/10/25/bioinformatics.bts635), 
[Systematic evaluation of spliced alignment programs for RNA-seq data](http://www.nature.com/nmeth/journal/v10/n12/full/nmeth.2722.html)

Download [STAR](https://github.com/alexdobin/STAR/releases) and its [manual](https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf).

* Genome:
* 
-http://www.gencodegenes.org/

–http://www.ensembl.org/index.html

–http://www.ncbi.nlm.nih.gov/genome

* Reviews on RNA-seq:
* 
–JA Martin, et al, Next-generation transcriptome assembly. Nature Reviews Genetics 12, 671-682 (2011)

–S Pepke et al, Computation for ChIP-seq and RNA-seq studies. Nature Methods 6, S22 - S32 (2009)

* Evaluation of RNA-seq aligners:

–PG Engström et al, Systematic evaluation of spliced alignment programs for RNA-seq data. Nature Methods 10, 1185–1191 (2013)

–NA Fonseca, et al, RNA-Seq Gene Profiling - A Systematic Empirical Comparison. PLoS ONE 9(9): e107026. (2014)

* Systematic assessment of RNA-seq technology and data analysis:

–Five studies by the SEQC/MAQC-III Consortium, Nature Biotechnology 32, 888–932 (2014)

* Community:
[RNA-seq blog](http://www.rna-seqblog.com/);
[Biostars](https://www.biostars.org/)
