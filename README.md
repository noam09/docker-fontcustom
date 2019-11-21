# docker-fontcustom

[![Docker Pulls](https://img.shields.io/docker/pulls/noam09/docker-fontcustom.svg?style=flat-square)](https://hub.docker.com/r/noam09/docker-fontcustom/) ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/noam09/docker-fontcustom/latest?style=flat-square)

Docker image for [FontCustom](https://github.com/FontCustom/fontcustom).

## Usage

Show help message:

```console
docker run \
	-v $(pwd)/input:/input \
	-v $(pwd)/output:/output \
	-it noam09/docker-fontcustom:latest
```

Compile SVG files from `input` directory and save results to `output` directory:

```console
docker run \
	-v $(pwd)/input:/input \
	-v $(pwd)/output:/output \
	-it noam09/docker-fontcustom:latest \
	compile /input -o /output --name MyFont1
```
