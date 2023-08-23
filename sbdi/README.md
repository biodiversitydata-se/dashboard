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
make docker-build
make docker-run
```
