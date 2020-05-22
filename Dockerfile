FROM julia:latest

ADD install-packages.jl /tmp/install-packages.jl

ADD download-embeddings.jl /tmp/download-embeddings.jl

ENV DATADEPS_ALWAYS_ACCEPT true

RUN julia /tmp/install-packages.jl

RUN julia /tmp/download-embeddings.jl
