# PointNet-in-Docker


Build docker image for PointNet [https://github.com/charlesq34/pointnet]
docker image: docker pull peterx7803/pointnet

## Build image
docker build -t pointnet -f dockerfile .

## How to run
1. cd ~/ && git clone https://github.com/charlesq34/pointnet
2. docker run --runtime=nvidia -it --name pointnet -p 6006:6006 -v [pointnet_repo_path_on_host]:[desired_path_in_container] pointnet bash
3. cd [desired_path_in_container]

### Train classifier
1. python train.py 
2. open another terminal and type "docker exec -it pointnet bash", and run "tensorboard --logdir log"
3. open web browser and visit "localhost:6006" to check training progress
4. After finish training, type "python evaluate.py --visu"


### Train partial segmentation
1. cd part_seg
2. sh download_data.sh
3. python train.py --batch 10
4. After finish training, type "python test.py"

