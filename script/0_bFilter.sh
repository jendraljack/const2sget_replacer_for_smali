#!/system/bin/sh
ganti="$(dirname $0)"
find $ganti/smali -name "*.smali" -exec sh $ganti/filterSmali.sh {} \;
