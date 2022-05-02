FROM ubuntu:jammy
ENV DEBIAN_FRONTEND noninteractive
ENV TZ America/Detroit
RUN apt update
RUN apt upgrade -y
RUN apt install -y xfce4
RUN apt install -y tightvncserver --no-install-recommends
RUN apt install -y expect --no-install-recommends
RUN apt install -y python3 --no-install-recommends
RUN apt install -y git --no-install-recommends
RUN apt install -y python3-numpy --no-install-recommends
RUN apt install -y firefox --no-install-recommends
RUN apt install -y xfce4-taskmanager --no-install-recommends
RUN apt install -y xfce4-terminal
RUN apt remove -y gnome-terminal
RUN apt -y autoremove
WORKDIR "/root"
RUN git clone https://github.com/novnc/noVNC.git
#RUN apt -y install sudo
#RUN useradd -u 2345 ubuntu
#RUN usermod -aG sudo ubuntu
#RUN passwd -d ubuntu
#USER ubuntu
COPY start.py /script/start.py
COPY start.sh /script/start.sh
COPY shutdown.sh /root/Desktop/shutdown.sh
RUN chmod +x /root/Desktop/shutdown.sh
ENV USER root
ENV DISPLAY :1
ENV VNC_PASSWD ubuntu
CMD ["python3", "/script/start.py"]
EXPOSE 5901
EXPOSE 80
