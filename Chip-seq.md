## Chip-seq

#### Sequencing data file formats
- fastq sequence and quality
- bed alignment data
- wig wiggle, GC, probability score for *visualization*

[Data File Formats](https://genome.ucsc.edu/FAQ/FAQformat.html) on UCSC.

#### MACS

[MACS](http://liulab.dfci.harvard.edu/MACS/README.html) is Model-based Analysis for Chip-Seq

macs14 

-h, --help

-t, --treatment

-c, --control

-n, --name

-f, --format

-g, --species genome size

--keep-dup

-w, --generate wig files (time and memory consuming)

--call-subspeaks, invoke Mali Salmon's PeakSplitter soft to special the location


#### Sicer

[Sicer](http://home.gwu.edu/~wpeng/Software.htm) requires the standard	python compiler, as well as the numpy and scipy [package](http://www.mybiosoftware.com/cluster-analysis/5397). 
[It](http://www.genomatix.de/online_help/help_regionminer/sicer.html) represents a clustering algorithm for ChIPSeq data like MACS.

The Sicer command
$ sh DIR/SICER.sh ["InputDir"] ["bed file"] ["control file"] ["OutputDir"] ["Species"] ["redundancy threshold"] ["window size (bp)"] ["fragment size"] ["effective genome fraction"] ["gap size (bp)"] ["FDR"]

ChIPPeakAnno is a R package which is able to associate the peaks to nearby genes and also categorize peaks according to their nearby genomic features.

Sicer output file: File-name-islands-summary-FDR.01
Mapping peaks to genes: refFlat.txt is needed 

[Flow chart](http://www.nature.com/nrg/journal/v11/n7/full/nrg2795.html) for next-generation data analysis [figure 4](http://www.nature.com/nrg/journal/v11/n7/fig_tab/nrg2795_F4.html)
