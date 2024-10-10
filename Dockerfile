# docker build . -t websmurf/tauri-builder:1.0.0
# docker push websmurf/tauri-builder:1.0.0
ARG NODE_VERSION=20.18.0

FROM node:${NODE_VERSION}-bookworm-slim

RUN apt-get -qq -y update \
    # install main dependencies
    && apt-get --no-install-recommends -qq -y install ca-certificates clang libwebkit2gtk-4.1-dev build-essential curl wget file libxdo-dev libssl-dev libayatana-appindicator3-dev librsvg2-dev \
    # install rust
    && curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y \
    # install build stuff
    && apt-get --no-install-recommends -qq -y install nsis lld llvm \
    && /root/.cargo/bin/rustup target add x86_64-pc-windows-msvc \
    && /root/.cargo/bin/cargo install --locked cargo-xwin \
    # clean up
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
