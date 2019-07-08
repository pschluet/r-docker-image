FROM rocker/r-ver:3.6.0

RUN mkdir /home/analysis

RUN R -e "install.packages(c('remotes','tidyverse','tidytext','caret','tm','fastcluster'));"

COPY print.R /home/analysis/print.R

CMD R -e "source('/home/analysis/print.R')"
