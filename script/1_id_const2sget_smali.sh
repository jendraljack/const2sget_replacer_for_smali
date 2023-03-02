#!/system/bin/sh
ruangku="$(dirname $0)"
animrepdua="$(busybox basename $0)2.sh"
text="$(cat $ruangku/id.txt|grep "0x102"|busybox awk '{print "busybox sed -i \"s|"$7"|" "Lcom/android/internal/R\\\\\\\$id;->" $5 "|\"","\"\$@\""}')"
echo "$animrepdua"
#replacer="$(cat $ruangku/attr.smali|grep "x7f0"|busybox awk '{print $5}')"
echo "$text" > $ruangku/$animrepdua
#busybox sed -i "s/\(.*\)\ads\(.*\)/\1$prop\2/" $ruangku/apktool.yml > $ruangku/log.txt
#cat $ruangku/log.txt
#sh $ruangku/replacerku.sh
##27022023##
if [ ! -d "$ruangku/id" ]
then
mkdir $ruangku/id
fi

counter=0;
cat "$ruangku/$animrepdua"| while read LINE;
do ((counter++));
echo $LINE > "$ruangku/id/$counter.sh"; done
#find $ruangku/smali -name "*.smali" -exec sh $ruangku/$animrepdua {} \;
echo "oke."
sh $ruangku/batchId.sh
####