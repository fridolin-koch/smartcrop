FROM golang:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    libcv-dev \
    libopencv-dev \
    libopencv-contrib-dev \
    libhighgui-dev \
    libopencv-photo-dev \
    libopencv-imgproc-dev \
    libopencv-stitching-dev \
    libopencv-superres-dev \
    libopencv-ts-dev \
    libopencv-videostab-dev \
    opencv-data \
    && rm -rf /var/lib/apt/lists/*

COPY . /go/src/app

WORKDIR  /go/src/app

RUN go get -d -v
RUN ln -s /dev/null /dev/raw1394

CMD ["/bin/bash"]