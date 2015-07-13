# to generate escaped files, do: cat Images.txt | sed 's/ /\\ /g' > Images_escaped.txt

cd /memexdata/Dataset/raw/0003_BackpageExtended/img_nospaces
while read -r line && read -u 3 line2; do
  dname=`dirname $line2`
  mkdir -p $dname
  cmd="ln -s \"../../../../img/$line\" $line2"
  eval $cmd
done < /memexdata/Dataset/processed/0006_BackpageExtended/Images/lists/Images_new.txt 3< /memexdata/Dataset/processed/0006_BackpageExtended/Images/lists/Images_new_nospaces.txt
