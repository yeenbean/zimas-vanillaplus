#!/usr/bin/env bash

echo "Running this build script is a destructive process."
echo "ALL PREVIOUS BUILDS WILL BE DELETED FROM YOUR SYSTEM."
echo
read -r -p "Do you want to continue? [y/N]: " yn

case $yn in
    [Yy]*)
        echo "Proceeding with build..."
        ;;
    [Nn]* | "")
        exit 0
        ;;
esac

cd ./Versions || {
    echo "Cannot find Versions directory. Exiting..."
    exit 1
}
for dir in */*; do
    # prep directory
    echo
    echo "==== Building $dir ===="
    cd $dir
    rm -rf ./build/
    #bash create-release.sh

    # build release
    version=$(grep -m 1 "version = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')
    target=$(grep -m 1 "minecraft = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')
    echo "Creating $version for $target..."
    mkdir ./build
    packwiz mr export -o "./build/$version+$target-zimas-vanillaplus.mrpack"
    packwiz cf export -o "./build/$version+$target-zimas-vanillaplus.zip"

    # return to top directory
    cd ../../
done
