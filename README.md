# go-dev

Golang development container - a good starting point for general Golang development in a docker container

## Usage

Simple Go container with dep installed

```
docker-compose up &
```

For a more generic installation, checkout of the docker-compose-vanilla.yml file.  It's a useful recipe for leveraging the latest golang docker image.

```
docker-compose -f docker-compose-vanilla.yml up
```

If you wish to use dep for dependency management in your vanilla container run the /scripts/dep.sh script or /scripts/glide.sh script inside your container.

## Recompile

Connect to your container.  Change "hello" to the name of your project.  From within the container run the following.

```
go install hello
```

Then restart your container

## Hugo

```
docker exec -it golang_dev /scripts/hugo.sh
```

## Container

To connect to the container

```
docker exec -it golang_dev /bin/bash
```

## Debugging

Change the entry point in your docker-compose file to be some file or log.

e.g. tail -f /var/log/bootstrap.log

	entrypoint:
		- tail
    	- -f
    	- /var/log/bootstrap.log

This will allow you to figure out why your code is not compiling.  You cannot run the docker container if you do not have a valid entrypoint (e.g. go routine)
