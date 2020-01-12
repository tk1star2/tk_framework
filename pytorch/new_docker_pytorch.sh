docker run -it --name pyTorch armv7/armhf-ubuntu bash

#sudo cp /home/tk1star2/.Xauthority /root/
#sudo xhost +local:root

#nvidia-docker run -d -p 6006:6006 -e DISPLAY=$DISPLAY \
#        --env="QT_X11_NO_MITSHM=1"\
#        --net=host \
#        --workdir="/root" \
#        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
#        -v /root/.Xauthority:/root/.Xauthority:rw \
#        -v /home/tk1star2/Desktop/tk/tk_framework/tensorflow2/Desktop:/root/dataset:rw \
#        --name tsflow2 -it nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04 bash
#docker cp ./X11 tsflow:/root/

