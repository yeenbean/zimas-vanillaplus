#!/usr/bin/env bash

rootdir=$(pwd)

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

mkdir $rootdir/build

for dir in */*; do
    echo
    echo "==== Building $dir ===="
    cd $dir

    # grab release info
    version=$(grep -m 1 "version = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')
    target=$(grep -m 1 "minecraft = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')

    # build release
    echo "Creating $version for $target..."
    mkdir $rootdir/build/$version+$target
    packwiz mr export -o "$rootdir/build/$version+$target/Zimas_VanillaPlus-$version+$target.mrpack"

    # extract release for verification
    cd $rootdir/build/$version+$target
    unzip Zimas_VanillaPlus-$version+$target.mrpack

    # return to top
    cd $rootdir/Versions
done
