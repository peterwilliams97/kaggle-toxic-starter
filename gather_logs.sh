#!/usr/bin/env bash

mkdir logs
pushd logs

for i in `seq 2 7`;
        do
            echo gpu$i
            mkdir gpu$i
            pushd gpu$i
            gcloud compute scp gpu$i:~/code/kaggle-toxic-starter/toxic.log .
            ls -l
            popd
            echo Done gpu$i
        done

popd
