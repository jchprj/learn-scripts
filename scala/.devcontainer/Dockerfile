# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version (use bullseye on local arm64/Apple Silicon): bullseye, buster
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>


ENV SDKMAN_DIR="/usr/local/sdkman"
# Install sdkman if not installed
RUN groupadd -r sdkman \
    && usermod -a -G sdkman vscode \
    && umask 0002 \
    && curl -sSL "https://get.sdkman.io?rcupdate=false" | bash \
    && chown -R :sdkman ${SDKMAN_DIR} \
    && find ${SDKMAN_DIR} -type d | xargs -d '\n' chmod g+s \
    && echo "export SDKMAN_DIR=${SDKMAN_DIR}\n. \${SDKMAN_DIR}/bin/sdkman-init.sh" >> /etc/bash.bashrc \
    && echo "export SDKMAN_DIR=${SDKMAN_DIR}\n. \${SDKMAN_DIR}/bin/sdkman-init.sh" >> /etc/zsh/zshrc
ENV PATH="${SDKMAN_DIR}/candidates/java/current/bin:${PATH}:${SDKMAN_DIR}/candidates/maven/current/bin:${SDKMAN_DIR}/candidates/gradle/current/bin"
RUN su vscode -c "umask 0002 && . /usr/local/sdkman/bin/sdkman-init.sh && sdk install scala 2.13.9"