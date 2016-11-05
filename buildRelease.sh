#!/bin/bash

cat GameData/LLL/LLL.version

echo "enter version: "
read version

zip -9r LLL-Continued-${version}.zip CHANGELOG.txt License README.md GameData
