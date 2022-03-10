# Docker Image Creator

The repo is used to create the image used by ADLINK.

# Usage

* Install docker and add docker privilege to current user.

```bash
sudo apt install docker.io
sudo groupadd docker
sudo gpasswd -a $USER docker
```

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
# push docker image to dockerhub
make push_nv
make push_intel
```

