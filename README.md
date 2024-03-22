# DLStreamer MQTT Dockered Application

<!-- This Project contains my desperation to make Mosquitto work with the port I need. I'm gonna go fuck myself -->
This project contains the code for an application that takes video detections from a docker and sends them to the host system by MQTT. 

<!-- ![image](assets/iris_pocho.png)
![image](assets/schema.png) -->

<!-- Kill me pls -->

## Clone

To start this application, you first need to clone the repository.
```
git clone https://github.com/SDuSDi/DLStreamer-MQTT-Dockered-Application.git
cd DLStreamer-MQTT-Dockered-Application
```

## Docker && Dockerfile

The execution of the application was entirely made and tested on Docker, so its use its highly advised, if not mandatory.

If you want to build a docker image with this code that contains everything necessary for its use, it is posible using the following command on the cloned repository home folder.
```
docker build -t braismtnez/dlstreamer .
```
To use said docker image, run the following command. Te program should show on startup.
```
./run.sh

# The script ./run.sh contains the following command, if you wish to run it yourself

docker run -it --privileged --net=host --device /dev/dri -v ~/.Xauthority:/home/dlstreamer/.Xauthority -v /tmp/.X11-unix -e DISPLAY=$DISPLAY -v /dev/bus/usb --rm braismtnez/dlstreamer /bin/bash
```

## Diving Deeper

- https://dlstreamer.github.io/

## Reach Out

Brais Martínez -> bmartinez.ext@catec.aero