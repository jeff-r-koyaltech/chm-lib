# chm-lib
Dockerized version of [CHM Lib](http://www.jedrea.com/chmlib/)

See [GitHub source](https://github.com/jedwing/CHMLib)

Or just pull it from [Docker Hub](https://hub.docker.com/r/langboost/chm-lib/), if you know what you're doing.

## Usage
1) Clone the repo
2) Drop your .chm file in the chms folder
3) docker-compose up


The docker image expects *.chm files to be mounted as a VOLUME against /home/chms. The default command simply loops over those and extracts them into a directory of the same name, in the same folder.
