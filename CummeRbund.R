# load CummeRbund library
## Manual of CummeRbund: http://compbio.mit.edu/cummeRbund/manual_2_0.html
library("cummeRbund")
library(gplots)

# set up working directory
setwd()

# creat a cummeRbund database from the cuffidff output
cuff_data = readCufflinks('filename') #like'G1_diff'

# Plot the distribution of expression levels for each sample
den = csDensity(genes(cuff_data))

# Compare the expression of each gene in two condistions with a scatter plot
sca = csScatter(genes(cuff_data),'WT_G1','KO_G1')
plot(sca)

# Create a volcano plot to inspect differentially expressed genes, to see whether it is significantly different
vol = csVolcano(genes(cuff_data), 'WT_G1','KO_G1')
plot(vol)

# Plot expresssion levels for genes of interest with bar plots
mygene = getGene(cuff_data, 'BRCA1')
expressionBarplot(mygene)

# Plot individual isoform expression levels of selected genes of interest with bar plots
expresssionBarplot(isoforms(mygene))

###################################################################################################
# hierarchical clustering of differential expressed genes in three time conditions

G1 = readCufflinks('G1_diff')
G2 = readCufflinks('G2_diff')
G3 = readCufflinks('G3_diff')

gene1.matrix = fpkmMatrix(genes(G1))
gene2.matrix = fpkmMatrix(genes(G2))
gene3.matrix = fpkmMatrix(genes(G3))

# create a gene list
library(gplots)
alldiff3 = read.delim(alldiff3.txt, header = FALSE, sep = "\t")
# getGenes(G1, t(alldiff3))
# gene1.matrix = fpkmMatrix()
gene1.matrix = fpkmMatrix(getGenes(G1, t(alldiff3))) 
gene2.matrix = fpkmMatrix(getGenes(G2, t(alldiff3))) 
gene3.matrix = fpkmMatrix(getGenes(G3, t(alldiff3))) 
temp = cbind(gene1.matrix, gene2.matrix, gene3.matrix)
heatmap.2(as.matrix(temp), scale="row", dendrogram="both", density.info=c("none"), margins=c(5,5), trace=c("none"), labRow=F)
# functions like distfun = dist, hclustfun = hclust...

#change to pretty color
library("RColorBrewer")
heatmap.2(as.matrix(temp), scale="row", dendrogram="both", density.info=c("none"), margins=c(5,5), trace=c("none"), labRow=F, col)
