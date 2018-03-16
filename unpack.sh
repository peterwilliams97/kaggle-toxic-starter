#!/usr/bin/env bash

pushd ~/data/

mkdir models
cd models
mkdir word2vec
cp ../GoogleNews-vectors-negative300.bin.gz word2vec
cd word2vec
gzip -d GoogleNews-vectors-negative300.bin.gz
cd ..
mkdir fasttext
cp ../crawl-300d-2M.vec.zip fasttext
cd fasttext
unzip crawl-300d-2M.vec.zip
rm crawl-300d-2M.vec.zip

popd
