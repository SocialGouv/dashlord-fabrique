#!/bin/sh

# remove all results that are not in dashlord.yaml anymore

function isLegacy() {
    URL=$1
    QUERY='.urls[] | select(.url == "'$URL'")'
    STATUS=$( yq -e e "$QUERY" dashlord.yml )
  #  echo $?
}

for d in results/* ; do
    url=$( echo $d | sed s/^results\\/// | base64 -d )
    legacy=$( isLegacy "$url" )
    if [[ $? -ne 0  ]]; then
        echo "URL: $url"
        echo "DELETE"
        rm -rf "$d"
    fi
done
