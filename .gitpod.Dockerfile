# Image source code: https://github.com/axonasif/workspace-images/tree/tmp
# Also see https://github.com/gitpod-io/workspace-images/issues/1071
FROM axonasif/workspace-base@sha256:8c057b1d13bdfe8c279c68aef8242d32110c8d5310f9a393f9c0417bc61367d9

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# install ghcup, then stack and hls via it
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | env BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

# Persist ~ due to the requirements of this project
RUN echo 'create-overlay $HOME' > "$HOME/.runonce/1-home_persist"

# Add ghcup to path
ENV PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
RUN ghcup install stack && ghcup install hls

# Moved commands from .gitpod.yml:init
RUN sudo sh -c 'curl -o /usr/bin/epm -L https://github.com/e-wrks/epm/raw/latest/epm && chmod +x /usr/bin/epm'

RUN cd $HOME && mkdir -p edh && cd edh \
    && epm init \
        -B https://github.com/e-wrks edh \
        -B http://github.com/complyue nedh els sedh eas hasdim haskit
    # && cd edh-universe \
    # && stack update \
    # && stack install
