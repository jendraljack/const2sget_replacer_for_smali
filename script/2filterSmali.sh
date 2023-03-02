#!/system/bin/sh
check="$(cat "$@"|grep -i "Lcom/android/internal/R")"
retlif="$(dirname $0)"
ilams="$(basename "$@")"
###
if [ "$check" = "" ]
then
echo "no findviewid\nSkiping.."
kill -9 $$
fi
###
if [ ! -d "$retlif/filter2" ]
then
mkdir $retlif/filter2
fi
####
echo "$ilams di pindah ke $retlif/filter2..."
mv -f "$@" "$retlif/filter2/$ilams"
echo "Ok..."
