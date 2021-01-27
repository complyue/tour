FROM gitpod/workspace-full:latest

USER gitpod
RUN mkdir -p /home/gitpod/.local/bin
ENV PATH=/home/gitpod/.local/bin:$PATH

USER root
RUN curl -sSL https://get.haskellstack.org/ | sh

USER gitpod
RUN curl -o /home/gitpod/.local/bin/epm -L \
 https://github.com/e-wrks/epm/raw/latest/epm \
 && chmod a+x /home/gitpod/.local/bin/epm
