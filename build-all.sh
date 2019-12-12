#!/bin/sh

echo Building containers.

for DF in Dockerfile-*; do
  TAG=$( echo $DF | sed -e 's/Dockerfile/diags/' )

  echo; echo; echo; echo; echo;
  echo "Building container image from $DF -> $TAG"
  echo;

  podman build -f $DF -t $TAG

done
