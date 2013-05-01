#!/bin/sh

echo "Compile ready for deployment project in build folder."

# make build folder and copy web content inside
echo "1. Remove/Make build folder"
rm -rf build
mkdir build

#copy web content into build
echo "2. Copy web content into build folder"
cd web
find . -name packages -prune -o \( \! -name *~ -print0 \)|
cpio -pmd0 ../build
cd ..

#make folder packages in build
echo "3. Make packages folder inside build"
mkdir build/src/packages

#copy packages sources content inside build packages
echo "4. Copy symbolic links source of packages into build packages"
cp -Lr packages/* build/src/packages
