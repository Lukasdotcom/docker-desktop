expect -c 'set timeout 3;spawn /usr/bin/vncpasswd;expect "*?assword:*";send -- "${VNC_PASSWD}\r";expect "*?erify:*";send -- "${VNC_PASSWD}\r";expect "*?view-only password*";send -- "n\r";send -- "\r";expect eof' ;
vncserver ;
startlxde &
/bin/bash /root/noVNC/utils/novnc_proxy --vnc 127.0.0.1:5901 --listen 80
