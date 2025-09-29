FROM rocker/r-ver:4.5.1

# There are some littler utilities not automatically added to path
ENV PATH=/usr/local/lib/R/site-library/littler/examples/:${PATH}
USER root
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y zlib1g-dev && \
    install2.r GGally BiocManager && \
    installBioc.r GENESIS
