# Dashboard

## Setup

Create data directory at `/data/dashboard` and populate as below (it is easiest to symlink the config files to the ones in this repo):
```
mats@xps-13:/data/dashboard$ tree
.
├── config
│   ├── dashboard-config.properties -> /home/mats/src/biodiversitydata-se/dashboard/sbdi/data/config/dashboard-config.properties
├── csv
├── data.json -> /home/mats/src/biodiversitydata-se/dashboard/sbdi/data/data.json
└── zip
```

## Usage

Run locally:
```
make run
```

Build and run in Docker (using Tomcat):
```
make run-docker
```

Make a release. This will create a new tag and push it. A new Docker container will be built on Github.
```
mats@xps-13:~/src/biodiversitydata-se/dashboard (master *)$ make release

Current version: v2.0.1. Enter the new version (or press Enter for v2.0.2): 
Updating to version v2.0.2
Tag v2.0.2 created and pushed.
```
