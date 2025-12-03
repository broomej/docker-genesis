FROM snakemake/snakemake:stable

USER root
RUN RUN micromamba install bioconda::bioconductor-genesis conda-forge::tidyverse conda-forge::r-ggally && \
    micromamba clean --all -y
