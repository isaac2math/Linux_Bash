#!/bin/bash

docker_check () {

    #system-wide update
    apt-get update && apt-get upgrade -y && apt-get autoremove -y

    echo $'\nUpdate done in Linux\n'

    #Python update
    source /root/miniforge3/etc/profile.d/conda.sh

    conda update --all -y

    echo $'\nUpdate done in Python\n'

    #R update
    echo $'r = getOption("repos")\nr["CRAN"] = "https://mirror.aarnet.edu.au/pub/CRAN/"\noptions(repos = r)\nupdate.packages(ask=FALSE)' >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    Rscript /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    rm -rf /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    echo $'\nUpdate done in R\n'

    #Julia update
    echo $'#!/root/julia/bin/julia\nusing Pkg\nPkg.update()\n' >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    chmod a+x /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    echo $'\nUpdate done in Julia\n'

    rm -rf /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

}

docker_check
