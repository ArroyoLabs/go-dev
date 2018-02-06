go-dev
======

Golang development container - a good starting point for general Golang development in a docker container

Usage
-----

	docker-compose up &

If you wish to use glide in your project use the convenient glide container or run the /scripts/glide.sh script inside your container.  To create the glide container specify the docker-compose-glide.yml composer script.

	docker-compose -f docker-compose-glide.yml up


Recompile
---------

Connect to your container.  Change "hello" to the name of your project.  From within the container run the following.

	go install hello

restart your container


Debugging
---------

Change the entry point in your docker-compose file to be some file or log.

e.g. tail -f /var/log/bootstrap.log

	entrypoint:
		- tail
    	- -f
    	- /var/log/bootstrap.log

This will allow you to figure out why your code is not compiling.  You cannot run the docker container if you do not have a valid entrypoint (e.g. go routine)
