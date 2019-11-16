docker-phpmd
============

Run PHP Mess Detector (phpmd) in Docker container


Build
--------------------

Build from `Dockerfile`:

```sh
docker build -t fredericomartini/phpmd .
```

Verify build:

```sh
docker run --rm -it fredericomartini/phpmd --version
```

Usage
--------------------

1. Install the `fredericomartini/phpmd` container (optional - this step is performed by Docker automatically when running the container):

```sh
$ docker pull fredericomartini/phpmd
```

2. Define an bash alias that runs this container whenever `phpmd` is invoked on the command line:

```sh
$ echo "alias phpmd='docker run --rm -it -v \$(pwd):/app fredericomartini/phpmd'" >> ~/.bashrc
$ source ~/.bashrc
```

3. Run phpmd as always:

```sh
$ phpmd --version
```