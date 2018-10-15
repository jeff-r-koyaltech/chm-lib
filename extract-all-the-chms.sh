CHMS=/home/chms

for i in $CHMS/*.chm; do
    file=$i
    dir=${file/\.chm/}
    # echo $file
    # echo $dir

    extract_chmLib $file $dir
done
