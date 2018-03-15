#!/usr/bin/env bash

pushd ~/data/toxic

gcloud compute scp train_translated.csv gpu2:~/data/toxic
gcloud compute scp test_translated.csv gpu2:~/data/toxic

gcloud compute scp train_translated.csv gpu3:~/data/toxic
gcloud compute scp test_translated.csv gpu3:~/data/toxic

gcloud compute scp train_translated.csv gpu4:~/data/toxic
gcloud compute scp test_translated.csv gpu4:~/data/toxic

gcloud compute scp train_translated.csv gpu5:~/data/toxic
gcloud compute scp test_translated.csv gpu5:~/data/toxic

gcloud compute scp train_translated.csv gpu6:~/data/toxic
gcloud compute scp test_translated.csv gpu6:~/data/toxic

gcloud compute scp train_translated.csv gpu7:~/data/toxic
gcloud compute scp test_translated.csv gpu7:~/data/toxic

popd

