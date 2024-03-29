# kicad_pybuild

Docker image to create Debian GNU/Linux python packages for KiCad tools.
Uploaded to [dockerhub](https://hub.docker.com/repository/docker/setsoft/kicad_pybuild/)

The current tags are:

* **10.3** is Debian 10.3 + with Python package tools
* **10.4** is Debian 10.4 + with Python package tools + PyPI tools
* **11.4** is Debian 11.4 + with Python package tools + PyPI tools
* **11.8** (same as **latest**) is Debian 11.8 + with Python package tools + PyPI tools

The following scripts are provided as examples:

* [build.sh](https://github.com/INTI-CMNB/kicad_pybuild/blob/master/build.sh) creates the image from the [Dockerfile](https://github.com/INTI-CMNB/kicad_pybuild/blob/master/Dockerfile)
* [run_shell_same_user.sh](https://github.com/INTI-CMNB/kicad_pybuild/blob/master/run_shell_same_user.sh) runs a shell using the same user you are using in the host system.




