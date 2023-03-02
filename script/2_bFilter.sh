#!/system/bin/sh
ganti="$(dirname $0)"
find $ganti/filter -name "*.smali" -exec sh $ganti/2filterSmali.sh {} \;
