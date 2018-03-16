#!/usr/bin/env bash

for i in `seq 2 7`;
        do
            echo gpu$i
            pushd ~/data/models
            gcloud compute scp crawl-300d-2M.vec.zip gpu$i:~/data
            gcloud compute scp GoogleNews-vectors-negative300.bin.gz gpu$i:~/data
            popd
            echo Done gpu
        done

