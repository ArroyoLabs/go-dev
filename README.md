go-dev
======

Golang development container - a good starting point for general Golang development in a docker container

Usage
-----

	`docker-compose up &`

Recompile
---------

Connect to your container.  Change "hello" to the name of your project.  From within the container run the following.
	
	cd /go/src
	go install hello

restart your container


Debugging
---------

Change the entry point in your docker-compose file to be 

	- tail -f /var/log/error

This will allow you to figure out why your code is not compiling.  You cannot run the docker container if you do not have a valid entrypoint (e.g. go routine)

