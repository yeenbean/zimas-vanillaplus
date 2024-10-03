version=$(grep -m 1 "version = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')
target=$(grep -m 1 "minecraft = \"" pack.toml | cut -d '=' -f 2 | tr -d '"' | tr -d ' ')
echo "Creating $version for $target..."
#echo "\"$version\""

mkdir ./build
packwiz mr export -o "./build/$version+$target-zimas-vanillaplus.mrpack"
packwiz cf export -o "./build/$version+$target-zimas-vanillaplus.zip"
