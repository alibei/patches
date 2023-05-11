#!/bin/bash

C=$ANDROID_BUILD_TOP
D="frameworks/base"

clear_patches() { cd ${C}/${1}; git checkout -- . && git clean -df; cd ${C}; }

for R in $D; do
    clear_patches $R
done

