#!/system/bin/sh
folder="$(dirname $0)"
ilams="$(basename "$@")"
echo "memindahkan $ilams ke $@"
mv -f $folder/filter2/$ilams "$@"
echo "OK"
