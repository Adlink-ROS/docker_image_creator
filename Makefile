nvidia:
	docker build -t adlink_jetson -f Dockerfile_nvidia .

ros:
	docker build -t adlink_ros -f Dockerfile_ros .

all: nvidia ros
