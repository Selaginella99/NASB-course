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

# Create a volcano plot to inspect differentially expressed genes,
vol = csVolcano(genes(cuff_data), 'WT_G1','KO_G1')
plot(vol)

# Plot expresssion levels for genes of interest with bar plots
mygene = getGene(cuff_data, 'BRCA1')
expressionBarplot(mygene)

# Plot individual isoform expression levels of selected genes of interest with bar plots
expresssionBarplot(isoforms(mygene))


