rm -rf eng
mkdir eng
cd eng
mkdir train val
CLASSES=62
for i in `ls`
do
    cd $i
    for j in `seq 1 $CLASSES`;
    do
        s=`printf "%.3d" $j`
        mkdir $s
    done
    cd ..
done

cd ..
cd eng_raw

TRAIN=44

for i in `ls`;
do
    s=${i:3:3}
    n=${i:7:3}
    path="../eng/"
    if [ $n -le $TRAIN ];
    then
        path+="train/"
    else
        path+="val/"
    fi
    path+=$s
    path+="/$n.png"
    cp $i $path
done