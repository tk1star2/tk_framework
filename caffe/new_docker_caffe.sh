#docker run -it --name caffe tk1star2/caffe-rpi bash

sudo cp /home/tk1star2/.Xauthority /root/
sudo xhost +local:root

nvidia-docker run -d -p 6006:6006 -e DISPLAY=$DISPLAY \
        -p 8888:8888\
        --env="QT_X11_NO_MITSHM=1"\
        --net=host \
        --workdir="/root" \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v /root/.Xauthority:/root/.Xauthority:rw \
        -v /home/tk1star2/Desktop/tk/tk_framework/caffe/Desktop:/root/dataset:rw \
        --name caffe -it nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04 bash
docker cp ./X11 caffe:/root/

#sudo xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $(docker ps -l -q)`
        #-u root
        #-e SSH_AUTH_SOCK=/ssh-agent -v SSH_AUTH_SOCK:/ssh-agent\
        #-v /home/$USER:/home/$USER \
        #-v /etc/group:/etc/group:ro \
        #-v /etc/passwd:/etc/passwd:ro \
        #-v /etc/shadow:/etc/shadow:ro \
        #-v /etc/sudoers.d:/etc/sudoers.d:ro \

#-e DISPLAY=$DISPLAY

