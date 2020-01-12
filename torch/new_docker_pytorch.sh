sudo cp /home/tk1star2/.Xauthority /root/
sudo xhost +local:root

nvidia-docker run -d -p 6006:6006 -e DISPLAY=$DISPLAY \
	-p 8888:8888\
        --env="QT_X11_NO_MITSHM=1"\
        --net=host \
        --workdir="/root" \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v /root/.Xauthority:/root/.Xauthority:rw \
        -v /home/tk1star2/Desktop/tk/tk_framework/torch/Dataset:/root/Desktop:rw \
        --name torch -it nvidia/cuda:8.0-cudnn7-devel-ubuntu16.04 bash 
docker cp ./X11 torch:/root/

