# Quick reference

* Maintained by: [Websmurf](https://github.com/websmurf)
* Where to get help: [Discussions](https://github.com/websmurf/tauri-builder/discussions)

# Supported tags and respective Dockerfile links

* [1.0.0](https://github.com/websmurf/beanstalkd-docker/blob/main/Dockerfile)

# Quick reference (cont.)

* Where to file issues: https://github.com/websmurf/tauri-builder/issues

# What is Tauri?

[Tauri](https://tauri.app/) is can be used to create small, fast, secure, cross-platform applications
This container is used to build windows versions of Tauri applications through docker

# How to use this image

```
docker run --name beanstalkd websmurf/beanstalkd:1.13-alpine-3.20
````

## Exposing ports
```
docker run --name beanstalkd -p 11300:11300 websmurf/beanstalkd:1.13-alpine-3.20
```
