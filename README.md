# js_nvim

a docker file for a useful/portable js dev environment

[Pull `js_nvim` from Docker Hub](https://hub.docker.com/r/rudenoise/js_nvim/)

```bash
docker pull rudenoise/js_nvim
```

```bash
# get a shell
docker run -ti rudenoise/js_nvim /bin/bash

# build local
docker build -t js_nvim:local .

# run
docker run -ti js_nvim:local /bin/bash

# tidy up
docker system prune
```
