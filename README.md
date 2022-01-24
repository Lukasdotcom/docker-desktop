# Docker Desktop

This is a simple docker container that contains a desktop enivroment and a novnc server simply run the command below to start it.

``
docker run --rm -d -p 80:80 --name dekstop lukasdotcom/docker-dekstop
``

You can also add this argument to change the default password from ubuntu to something else.

``
-e VNC_PASSWD=YOUR_PASSWORD
``

You can also expose port 5901 to access the vnc server directly.
<br>
<br>
After you installed it just open http://localhost/vnc.html

## Notes
This is an arm64 image only.
