#!/bin/bash

if [ "$(which fortune)" == "" ]; then
    echo "Please install fortune with sudo apt install fortune or equivalent. Exiting."
    exit 1
fi

for f in bash exceptions git hiber jdbc json keywords mvn oop spring sql xml ; do
    echo "Creating fortune file for: $f."
    strfile -c % $f
    echo "File installation requires sudo privilege. Don't provide the password and files are only local, to be used with fortune pathToThisDir/json, if you will provide the password, the files will be installed in /usr/share/games/fortunes and will be available via fortune json"
    sudo cp $f $f.dat /usr/share/games/fortunes
    sudo mv $f $f.dat /usr/share/games/fortunes
done
