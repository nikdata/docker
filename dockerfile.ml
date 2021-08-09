FROM rocker/tidyverse:4.1.0

LABEL maintainer='Nik Agarwal <web@niks.me>'

RUN apt-get update && apt-get install -y --no-install-recommends \
        libgit2-dev \
        libxml2-dev \
        libudunits2-dev \
        libgdal-dev \
        libcairo2-dev \
        libxt-dev \
        libv8-dev \
        libpoppler-cpp-dev \
        libtesseract-dev \
        libleptonica-dev \
        tesseract-ocr-eng \
        libmagick++-dev \
        libavfilter-dev \
        libzmq3-dev \
    	mesa-common-dev \
    	libglu1-mesa-dev \
        cargo \
        curl \
        git \
        tree \
        jq \
        htop \
        texinfo \
        vim \
        man-db \
        less 

ENV ENV MRAN_BUILD_DATE=2021-08-01

# base packages
RUN install2.r -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
    --error \
    rgl \
	data.table \
	reprex \
	clipr \
	httr \
	curl \
	RCurl \
	here \
	janitor \
	qs \
	future.callr \
	tsibble \
	profvis \
	targets \ 
	future \ 
	future.callr \
	furrr \
	curl \
	bit64 \
	getPass \
	RCurl \
	assertive \
	RPostgres \
	pool \
	skimr \
    DataExplorer \
    devtools \
    usethis \
    testthat

# Parallelization Packages
RUN install2.R -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
    --error \
    foreach \
    parallel \
    doParallel 

# Analysis Packages
RUN install2.r -r https://cran.microsoft.com/snapshot/${MRAN_BUILD_DATE} \
	--error \
	randomForest \
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
	modeltime \
	timetk \
    tsfeatures \
    e1071 \
    moments \
    ranger \
    xgboost