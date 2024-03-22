#! /usr/bin/env bash
set -e

# setup openvino and dlstreamer
source "/opt/intel/openvino_2023/setupvars.sh"
source "/opt/intel/dlstreamer/setupvars.sh"

# setup models paths
export DETECTION_MODEL=${MODELS_PATH}/intel/person-vehicle-bike-detection-2004/FP32/person-vehicle-bike-detection-2004.xml
export DETECTION_MODEL_PROC=/opt/intel/dlstreamer/samples/gstreamer/model_proc/intel/person-vehicle-bike-detection-2004.json
export VEHICLE_CLASSIFICATION_MODEL=${MODELS_PATH}/intel/vehicle-attributes-recognition-barrier-0039/FP32/vehicle-attributes-recognition-barrier-0039.xml
export VEHICLE_CLASSIFICATION_MODEL_PROC=/opt/intel/dlstreamer/samples/gstreamer/model_proc/intel/vehicle-attributes-recognition-barrier-0039.json

# set path to video example
export VIDEO_EXAMPLE=/home/dlstreamer/person-bicycle-car-detection.mp4

# start tmuxinator
cd /home/dlstreamer/tmux/ && \
tmuxinator start -p ./session.yml