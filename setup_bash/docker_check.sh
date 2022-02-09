#!/bin/bash

docker_check () {

    #system-wide update
    apt-get update && apt-get upgrade -y && apt-get autoremove -y

    echo $'\nUpdate done in Linux\n'

    #anaconda update
    source /root/anaconda3/etc/profile.d/conda.sh

    conda update --all -y

    echo $'\nUpdate done in Python\n'

    #R update
    touch /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    echo "update.packages(ask=FALSE)" >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    echo $'\nUpdate done in R\n'

    Rscript /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    rm -rf /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    #Julia update
    echo $'#!/root/julia/bin/julia\nusing Pkg\nPkg.update()\n' >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    chmod a+x /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    echo $'\nUpdate done in Julia\n'

    rm -rf /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

}

docker_check
