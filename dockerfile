# Build image for pointnet in Tensorflow

FROM tensorflow/tensorflow:latest-gpu


RUN apt-get update && apt-get install -y \
    python-dev \
    python-pip \
    libhdf5-dev \
    python-h5py \
    g++ \
    build-essential \
    cmake \
    wget \
    python-tk \
 && rm -rf /var/lib/apt/lists/*


RUN pip install h5py
