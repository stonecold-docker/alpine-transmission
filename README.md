# alpine-transmission

#### [alpine-x64-transmission](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-transmission/)
[![](https://images.microbadger.com/badges/version/forumi0721alpinex64/alpine-x64-transmission.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-transmission "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpinex64/alpine-x64-transmission.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-transmission "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-transmission/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-transmission/)
#### [alpine-aarch64-transmission](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-transmission/)
[![](https://images.microbadger.com/badges/version/forumi0721alpineaarch64/alpine-aarch64-transmission.svg)](https://microbadger.com/images/forumi0721alpineaarch64/alpine-aarch64-transmission "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpineaarch64/alpine-aarch64-transmission.svg)](https://microbadger.com/images/forumi0721alpineaarch64/alpine-aarch64-transmission "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpineaarch64/alpine-aarch64-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-transmission/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpineaarch64/alpine-aarch64-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-transmission/)
#### [alpine-armhf-transmission](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-transmission/)
[![](https://images.microbadger.com/badges/version/forumi0721alpinearmhf/alpine-armhf-transmission.svg)](https://microbadger.com/images/forumi0721alpinearmhf/alpine-armhf-transmission "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpinearmhf/alpine-armhf-transmission.svg)](https://microbadger.com/images/forumi0721alpinearmhf/alpine-armhf-transmission "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinearmhf/alpine-armhf-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-transmission/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinearmhf/alpine-armhf-transmission.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-transmission/)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64,armhf
* Appplication : [Transmission](https://transmissionbt.com/)
    - Transmission is a cross-platform BitTorrent client.
* Base Image
    - [forumi0721/alpine-x64-base](https://hub.docker.com/r/forumi0721/alpine-x64-base/)
    - [forumi0721/alpine-aarch64-base](https://hub.docker.com/r/forumi0721/alpine-aarch64-base/)
    - [forumi0721/alpine-armhf-base](https://hub.docker.com/r/forumi0721/alpine-armhf-base/)



----------------------------------------
#### Run

* x64
```sh
docker run -d \
           -p 9091:9091/tcp \
           -p 51413:51413/tcp \
           -p 51413:51413/udp \
           -v /data:/data \
           -v /conf.d:/conf.d \
           -e USER_NAME=username \
           -e USER_PASSWD=passwd \
           -e TR_DOWNLOAD_DIR=/data \
           forumi0721alpinex64/alpine-x64-transmission:latest
```

* aarch64
```sh
docker run -d \
           -p 9091:9091/tcp \
           -p 51413:51413/tcp \
           -p 51413:51413/udp \
           -v /data:/data \
           -v /conf.d:/conf.d \
           -e USER_NAME=username \
           -e USER_PASSWD=passwd \
           -e TR_DOWNLOAD_DIR=/data \
           forumi0721alpineaarch64/alpine-aarch64-transmission:latest
```

* armhf
```sh
docker run -d \
           -p 9091:9091/tcp \
           -p 51413:51413/tcp \
           -p 51413:51413/udp \
           -v /data:/data \
           -v /conf.d:/conf.d \
           -e USER_NAME=username \
           -e USER_PASSWD=passwd \
           -e TR_DOWNLOAD_DIR=/data \
           forumi0721alpinearmhf/alpine-armhf-transmission:latest
```



----------------------------------------
#### Usage

* URL : [http://localhost:9091/](http://localhost:9091/)
    - Default username/password : forumi0721/passwd
    - If you want to use complex settings, you need to create `settings.json` and add `-v settings.json:/var/lib/transmission/.config/transmission-daemon/settings.json` to docker option.



----------------------------------------
#### Docker Options

| Option             | Description                                      |
|--------------------|--------------------------------------------------|
| -                  | -                                                |


#### Ports

| Port               | Description                                      |
|--------------------|--------------------------------------------------|
| 9091/tcp           | HTTP port                                        |
| 51413/tcp          | Peer port                                        |
| 51413/udp          | Peer port                                        |


#### Volumes

| Volume             | Description                                      |
|--------------------|--------------------------------------------------|
| /conf.d            | Config directory                                 |
| /data              | Download directory                               |


#### Environment Variables

| ENV                | Description                                      |
|--------------------|--------------------------------------------------|
| RUN_USER_NAME      | Application execute username (default : forumi721) |
| RUN_USER_UID       | Application execute user uid (default : 1000)    |
| RUN_USER_GID       | Application execute user gid (default : 100)     |
| USER_NAME          | Login username (default : forumi0721)            |
| USER_PASSWD        | Login password (default : passwd)                |
| USER_EPASSWD       | Login password (base64)                          |
| TR_DOWNLOAD_DIR    | Download directory (default : /data)             |
| TR_BLOCKLIST_URL   | Block list url                                   |
| TR_RATIO_LIMIT     | Seed ratio limit                                 |
| TR_RPC_WHITELIST   | RPC white list                                   |
| TR_SPEED_LIMIT_DOWN| Download limit                                   |
| TR_SPEED_LIMIT_UP  | Upload limite                                    |
| TR_PEER_PORT       | Peer port                                        |



----------------------------------------
* [forumi0721alpinex64/alpine-x64-transmission](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-transmission/)
* [forumi0721alpineaarch64/alpine-aarch64-transmission](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-transmission/)
* [forumi0721alpinearmhf/alpine-armhf-transmission](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-transmission/)

