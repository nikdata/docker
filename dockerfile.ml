FROM nikagarwal/nikdata:base

LABEL maintainer='Nik Agarwal <web@niks.me>'

# define variable for date (used for R packages)
ENV MRAN_BUILD_DATE=2021-08-01

# Install analysis related R Packages
RUN install2.r -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
	--error \
	randomForest \
	ranger \
	feasts \
	prophet \
	qcc \
	MSQC \
	Rtsne \
	strucchange \
	robfilter \
	bfast \
	tsmp \
	anomalize \
	slider \
	dtwclust \
	fpp3 \
	astsa \
	cluster \
	dendextend \
	rpart \
	party \
	partykit \
	fable \
	tidymodels \
	themis \
	modeltime \
	timetk \
	targets \
	mlr3 \
	xgboost

# Install parallelization packages
RUN install2.r -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
	--error \
	parallel \
	doParallel
