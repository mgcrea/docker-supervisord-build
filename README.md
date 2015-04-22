# docker-supervisord-build

Base image with both supervisord+ssh installed.

Leverages the `ONBUILD` instruction to setup an authorized ssh key, and thus must be targeted from another Dockerfile to work properly.


## Getting started

In your `Dockerfile`:

```
FROM mgcrea/supervisor-build:latest
MAINTAINER Olivier Louvignes <olivier@mg-crea.com>
```
