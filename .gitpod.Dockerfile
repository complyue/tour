FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.stack, ~/.ghcup will be lost across Gitpod workspace restarts,
# use /workspace/ so it is persisted as part of prebuilt workspace
ENV STACK_ROOT=/workspace/.stack
ENV GHCUP_INSTALL_BASE_PREFIX=/workspace

# install ghcup, then stack and hls via it
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | env BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh
RUN /workspace/.ghcup/bin/ghcup install stack hls

USER root

# make workspace's epm available globally
RUN ln -s /workspace/bin/epm /usr/local/bin/epm
