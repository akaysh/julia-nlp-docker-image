FROM julia:1.4.1-buster

ADD install-packages.jl /tmp/install-packages.jl

ADD download-embeddings.jl /tmp/download-embeddings.jl

ENV DATADEPS_ALWAYS_ACCEPT true

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		zip \
		unzip;
    
RUN julia /tmp/install-packages.jl

RUN julia /tmp/download-embeddings.jl
