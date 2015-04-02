all: vis

vis: code/04-LDAvis.R data/best_model.rda data/dtm_train.rda
	Rscript $<
	
data/best_model.rda: code/03-fitLDA.R data/dtm_train.rda
	Rscript $<
	
data/dtm_train.rda: code/02-preprocess.R data/docz.rda
	Rscript $<

data/docz.rda: code/01-scrape.R
	Rscript $<
