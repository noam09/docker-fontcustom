# docker-fontcustom

Docker image for [FontCustom](https://github.com/FontCustom/fontcustom).

Show help message:

```shell
docker run \
	-v $(pwd)/input:/input \
	-v $(pwd)/output:/output \
	-it noam09/docker-fontcustom:latest
```

Compile SVG files from `input` directory and save results to `output` directory:

```shell
docker run \
	-v $(pwd)/input:/input \
	-v $(pwd)/output:/output \
	-it noam09/docker-fontcustom:latest \
	compile /input -o /output --name MyFont1
```
