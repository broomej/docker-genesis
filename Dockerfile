FROM rocker/r-ver:4.5.2

# There are some littler utilities not automatically added to path
ENV PATH=/usr/local/lib/R/site-library/littler/examples/:${PATH}
USER root
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y zlib1g-dev parallel python3-pip && \
    `# install snakemake. The version available via apt lags quite` \
    `# substantially. Note --break-system-packages is required.` \
    pip3 install snakemake --break-system-packages && \
    install2.r GGally BiocManager && \
    installBioc.r GENESIS
