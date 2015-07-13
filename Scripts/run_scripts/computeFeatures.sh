CODE_PATH=/home/rgirdhar/data/Work/Code/0001_FeatureExtraction/ComputeFeatures/Features/CNN
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CODE_PATH}/external/caffe_dev_MemLayerWithMat/build/lib/
${CODE_PATH}/computeFeaturesFullImg.bin \
    -i /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Images/corpus_nospaces/ \
    -q /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Images/lists/Images_nospaces_withDataLabel.txt \
    -n deploy_memexgpu.prototxt \
    -m /home/rgirdhar/data/Software/vision/caffe/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel \
    -l pool5 \
    -o /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Features/CNN/pool5_normed \
    -y \
    -t lmdb \
    -s 8236837

