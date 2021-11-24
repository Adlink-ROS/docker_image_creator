# Docker Image Creator

The repo is used to create the image used by ADLINK.

# Usage

* You need to login the dockerhub first.

```bash
docker login
```

* Create the image and push to the dockerhub.

```bash
# Intel platform
make intel
# nvidia platform
make nvidia
```

