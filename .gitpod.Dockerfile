# Image source code: https://github.com/axonasif/workspace-images/tree/tmp
# Also see https://github.com/gitpod-io/workspace-images/issues/1071
FROM axonasif/workspace-base@sha256:8c057b1d13bdfe8c279c68aef8242d32110c8d5310f9a393f9c0417bc61367d9

USER gitpod

# Persist ~ due to the requirements of this project
RUN echo 'create-overlay $HOME' > "$HOME/.runonce/1-home_persist"

# or git will keep prompting
RUN git config --global pull.ff only

# install ghcup, then stack and hls via it
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | env BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh
RUN ghcup install stack && ghcup install hls
# populate stack's cache, this takes minutes & GBs
RUN stack update

# add /workspace/bin and ghcup to PATH
ENV PATH="/workspace/bin:$HOME/.ghcup/bin:$PATH"

# install latest epm
RUN mkdir -p $HOME/.local/bin; \
    curl -o $HOME/.local/bin/epm -L https://github.com/e-wrks/epm/raw/latest/epm && \
    chmod +x $HOME/.local/bin/epm
