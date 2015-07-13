CODE_PATH=/home/rgirdhar/data/Work/Code/0002_Retrieval/ScalableLSH/DiskE2LSH
nice -n 10 $CODE_PATH/buildIndex.bin \
    -d /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Features/CNN/pool5_normed \
    -n /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Images/lists/Images_nospaces.txt \
    -l /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Search/indexes/fullImg_270bit.index \
    -s /home/rgirdhar/memexdata/Dataset/processed/0006_BackpageExtended/Search/indexes/fullImg_270bit.index \
    -b 270 \
    -t 10 \
    -a 900
