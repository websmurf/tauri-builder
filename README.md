# Quick reference

* Maintained by: [Websmurf](https://github.com/websmurf)
* Where to get help: [Discussions](https://github.com/websmurf/tauri-builder/discussions)

# Supported tags and respective Dockerfile links

* [1.0.3](https://github.com/websmurf/beanstalkd-docker/blob/main/Dockerfile)

# Quick reference (cont.)

* Where to file issues: https://github.com/websmurf/tauri-builder/issues

# What is Tauri?

[Tauri](https://tauri.app/) is can be used to create small, fast, secure, cross-platform applications
This container is used to build windows versions of Tauri applications through docker

# How to use this image

Go to the root folder of your Tauri project en run the following command to enter the container:

    docker run --rm -it -v $(pwd):/io -w /io websmurf/tauri-builder:1.0.0 bash

Then run the following commands to build the windows version of your Tauri application:

    rm -Rf node_modules
    yarn install
    yarn tauri build --runner cargo-xwin --target x86_64-pc-windows-msvc

# Known issues

Sometimes the build will fail with the error "Error: response body closed before all bytes were read", 
this means that downloading the SDK data fails. You can simply retry the build until it is successful.
