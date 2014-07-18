docker-lamp
================

Base docker image to run PHP applications on Apache and Mysql


Usage
-----

To create the image `<yourname>/lamp`, execute the following command on the docker-lamp folder:

	docker build -t <yourname>/lamp .


Running your docker image
-------------------------

Run the container, connecting port 80 and add a data volume to a container using the -v:

	$docker run -itd -p 8000:80 --name lamp -v /var/www:/var/www javiernuber/lamp /bin/bash

Test your deployment:

	curl http://localhost:8000

Contributing
------------
Feel free to fork and contribute to this code. :)

1. Fork the repo
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Authors
-------

Created and maintained by [Fco Javier Núñez Berrocoso][author] (<javiernuber_at_gmail.com>)
