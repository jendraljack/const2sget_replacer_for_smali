#!/system/bin/sh
find $(dirname $0)/smali -name "*.smali" -exec sh $(dirname $0)/pindah.sh {} \;
echo "OK..."
