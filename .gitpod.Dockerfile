FROM gitpod/workspace-full:latest

USER gitpod
# or git will keep prompting
RUN git config --global pull.ff only
# ~/.stack will be lost across Gitpod workspace restarts,
# use /workspace/ for artifacts meant to be persisted
ENV STACK_ROOT=/workspace/.stack

USER root
# install haskell stack
RUN curl -sSL https://get.haskellstack.org/ | sh
# install epm
RUN curl -o /usr/local/bin/epm -L \
  https://github.com/e-wrks/epm/raw/latest/epm \
  && chmod a+x /usr/local/bin/epm
