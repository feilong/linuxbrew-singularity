# Definition file references
# https://github.com/neurodebian/neurodebian/blob/master/containers/singularity-neurodebian.def
# https://github.com/singularityware/singularity/blob/master/examples/debian/Singularity

img=id-studies.img ; sudo rm -f $img; sudo singularity create -s 1024 $img && sudo singularity bootstrap $img jessie.def

# Reducing image size if needed
# https://github.com/singularityware/singularity/issues/623
