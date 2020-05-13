FROM rocker/shiny-verse:3.6.3

RUN apt-get update -qq && apt-get install -y \
  git-core \
  libssl-dev \
  libcurl4-gnutls-dev \
  nano \
  libudunits2-dev \
  libgdal20 \
  libgdal-dev \
  libjq-dev \
  libv8-dev \
  libprotobuf-dev \
  protobuf-compiler \
  protobuf-c-compiler

RUN R -e 'install.packages(c("sf", "leaflet", "geojsonio"))'
RUN git clone https://github.com/troyhernandez/CHI_EJ_map /srv/shiny-server/CHI_EJ_map

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
