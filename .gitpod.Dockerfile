FROM gitpod/workspace-full

# Install tools
RUN sudo apt-get install ripgrep -y 
# let's see if jump works
#RUN wget https://github.com/gsamokovarov/jump/releases/download/v0.30.1/jump_0.30.1_amd64.deb && sudo dpkg -i jump_0.30.1_amd64.deb
RUN sudo apt-get install fish -y
RUN curl -fsSL https://starship.rs/install.sh -O
RUN bash install.sh -y
#RUN cargo install starship



COPY config.fish /home/gitpod/.config/fish/config.fish

RUN sudo cp -r /home/gitpod/.config /workspace/gitpod-playground/


RUN fish

USER root


# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
