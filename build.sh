cd ThirdParty/g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j16
cd ../../

cd DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j16
cd ../../../

mkdir build
cd build
cmake ..
make -j16

cd ..

# cd Vocabulary
# echo "Converting vocabulary to binary version"
# ./bin_vocabulary

# cd ..
