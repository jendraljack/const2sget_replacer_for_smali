#!/system/bin/sh
curdir="$(dirname $0)"
#prg="$(ls $curdir/id)"
#echo "cd $curdir" > $curdir/all_id.log
ls $curdir/id/*.sh > $curdir/all_id.log
echo "#!/system/bin/sh\necho \"Mereplace id di smali, mungkin memakan waktu yg lama..\" \ncd $curdir" > $curdir/gantiId.sh
cat "$curdir/all_id.log"|busybox awk '{print "find ./filter -name \"*.smali\" -exec sh " $0 " {} \\;"}' >> $curdir/gantiId.sh
echo "Sedang Mereplace id..."
##>> $curdir/gantiId.sh
#cat $curdir/gantiId.sh
sh $curdir/gantiId.sh
echo "selesai"
