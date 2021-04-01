FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.stack will be lost across Gitpod workspace restarts,
# use /workspace/ so it is persisted as part of prebuilt workspace
ENV STACK_ROOT=/workspace/.stack

USER root

# install haskell stack
RUN curl -sSL https://get.haskellstack.org/ | sh

# make workspace's epm available globally
RUN ln -s /workspace/bin/epm /usr/local/bin/epm
