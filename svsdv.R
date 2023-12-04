library(usethis)
usethis::use_git()
library(biomaRt)
data.frame(listAttributes(ensembl))
ensembl = useMart("ensembl",dataset="hsapiens_gene_ensembl") #uses human ensembl annotations
#gets gene symbol, transcript_id and go_id for all genes annotated with GO:0007507
gene.data <- getBM(attributes=c('hgnc_symbol', 'ensembl_transcript_id', 'go_id'),
                   filters = 'hgnc_symbol', values = 'SMAD3', mart = ensembl)
