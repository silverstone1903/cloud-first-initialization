# Python & R environment with selected libraries

Python & R environment for Docker. You can change the ```requirements.txt``` for Python and ```rpackages_install.R``` script for R to install new libraries/packagess. When you commit new files it triggers Github Actions then it builds new Docker image and pushes to Dockerhub.

You can run it via:
```
docker run -it --rm silverstone1903/pythonr:latest
```
<br>
![docker-build-push](https://github.com/silverstone1903/cloud-first-initialization/workflows/docker-build-push/badge.svg)