ubuntu_version=20.04
intel_version=1.0.0
nv_version=1.0.0
jetpack_version=r32.6
intel_image=adlinkrmt/rosmenu_ubuntu$(ubuntu_version)_intel
nv_image=adlinkrmt/rosmenu_ubuntu$(ubuntu_version)_nv_$(jetpack_version)

intel:
	docker build -t $(intel_image):$(intel_version) --build-arg IMAGE=ubuntu:$(ubuntu_version) -f Dockerfile_ros .
	docker tag $(intel_image):$(intel_version) $(intel_image)
	docker push $(intel_image):$(intel_version)
	docker push $(intel_image)

nvidia:
	docker build -t adlink_nv_$(jetpack_version) --build-arg IMAGE=ubuntu:$(ubuntu_version) -f Dockerfile_nvidia .
	docker build -t $(nv_image):$(nv_version) --build-arg IMAGE=adlink_nv_$(jetpack_version) -f Dockerfile_ros .
	docker tag $(nv_image):$(nv_version) $(nv_image)
	docker push $(nv_image):$(nv_version)
	docker push $(nv_image)

