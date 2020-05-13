FROM rocker/shiny-verse:3.6.3

RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev \
  nano \
  libudunits2-dev \
  libgdal20 \
  libgdal-dev

RUN R -e 'install.packages(c("sf"))'
RUN git clone https://github.com/troyhernandez/CHI_EJ_map /srv/shinyapps/CHI_EJ_map

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
