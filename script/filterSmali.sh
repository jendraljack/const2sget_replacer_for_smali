#!/system/bin/sh
check="$(cat "$@"|grep -i "findviewbyid")"
retlif="$(dirname $0)"
ilams="$(basename "$@")"
###
if [ "$check" = "" ]
then
echo "no findviewid\nSkiping.."
kill -9 $$
fi
###
if [ ! -d "$retlif/filter" ]
then
mkdir $retlif/filter
fi
####
echo "$ilams di pindah ke $retlif/filter..."
cp -f "$@" "$retlif/filter/$ilams"
echo "Ok..."
