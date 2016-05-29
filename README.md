# Docker Image for Graphite

This repository contains some Docker files to get a running docker image for [Graphite](http://graphite.wikidot.com/). It is based on [sitespeedio/graphite](https://hub.docker.com/r/sitespeedio/graphite/) image from Docker Hub.

For convenience, the `.htpasswd` and `storage-schemas.conf` files are stored within the conf directory and are copied into the image when building it.
                               
To run the image, simply run the following command:

> `make -f Docker.Makefile deploy`

Then in your browser navigate to:

> http://localhost:8080

and login with **demo/demo**.

For more details on Graphite and sitespeedio/graphite, see the following links:

 1. http://graphite.wikidot.com/
 2. https://graphite.readthedocs.io/en/latest/
 3. https://hub.docker.com/r/sitespeedio/graphite/