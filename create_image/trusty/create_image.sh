bare_img=bare.img
bare_def=bare.def

if [[ ! -f $bare_img ]]; then
    sudo singularity create -s 4096 $bare_img && sudo singularity bootstrap $bare_img $bare_def
fi


basic_img=basic.img
basic_def=basic.def

if [[ ! -f $basic_img ]]; then
    cp $bare_img $basic_img
    sudo singularity bootstrap $basic_img $basic_def
fi

# Create linuxbrew tarball remotely

trusty_img=trusty.img
trusty_def=trusty.def

if [[ ! -f $trusty_img ]]; then
    cp $basic_img $trusty_img
    sudo singularity bootstrap $trusty_img $trusty_def
fi

# test_img=test.img
# test_def=test.def

# if [[ ! -f $test_img ]]; then
#     cp $bare_img $test_img
# fi
# sudo singularity bootstrap $test_img $test_def

