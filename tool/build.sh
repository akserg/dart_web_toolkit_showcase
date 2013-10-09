#!/bin/bash

echo "Compile ready for deployment project in build folder."

echo "1. Compile Dart to JS"
dart2js -oweb/src/app.dart.js web/src/app.dart

# make build folder and copy web content inside
echo "2. Remove/Make build folder"
rm -rf build
mkdir build

#copy web content into build
echo "3. Copy web content into build folder"
cd web
find . -name packages -prune -o \( \! -name *~ -print0 \)|
cpio -pmd0 ../build
cd ..

#make folder packages in build
echo "4. Make packages folder inside build"
mkdir build/packages

#copy packages sources content inside build packages
echo "4. Copy symbolic links source of packages into build packages"
cp -Lr packages/* build/packages

#extra task - copy build content to folder if specified
if [ "$#" = 1 ]
then
  echo "Copy build folder content into $@"
  cp -r build/* "$@"
fi

