FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.stack, ~/.ghcup will be lost across Gitpod workspace restarts,
# use /workspace/ so it is persisted as part of prebuilt workspace
ENV STACK_ROOT=/workspace/.stack
ENV GHCUP_INSTALL_BASE_PREFIX=/workspace

# Add ghcup to path
ENV PATH=/workspace/bin:/workspace/.ghcup/bin:${PATH}

# create toolhome
RUN mkdir -p /workspace/bin

# install ghcup, then stack and hls via it
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | env BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh
RUN ghcup install stack
RUN ghcup install hls
