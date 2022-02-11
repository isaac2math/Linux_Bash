#!/bin/bash

docker_setup () {

    #system-wide update
    apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get install -y binutils-dev cargo clang cmake freeglut3-dev g++-7 gcc-7 gfortran gfortran-7 libarmadillo-dev libavfilter-dev libboost-all-dev libboost-serialization-dev libboost-test-dev libbz2-dev libcairo2-dev libgdal-dev libgeos-dev libgit2-dev libglu1-mesa-dev libgmp3-dev libjpeg-dev libjpeg62 libleptonica-dev liblzma-dev libmagick++-dev libmlpack-dev libmpfr-dev libpcre2-dev libpng-dev libpoppler-cpp-dev libreadline6-dev librsvg2-dev libssh2-1-dev libssl-dev libtesseract-dev libudunits2-dev libv8-dev libx11-dev libxml2-dev libxt-dev libzstd-dev mesa-common-dev nano octave openjdk-11-jdk screen software-properties-common tesseract-ocr-eng texlive wget xclip xdotool xvfb zlib1g-dev git

    echo $'\nUpdate done in Linux\n'

    #R install
    cd /usr/local/src && wget https://cran.rstudio.com/src/base/R-4/R-4.1.2.tar.gz && tar zxvf R-4.1.2.tar.gz && cd R-4.1.2 && ./configure --enable-R-shlib && make && make install

    echo $'r = getOption("repos")\nr["CRAN"] = "https://mirror.aarnet.edu.au/pub/CRAN/"\noptions(repos = r)\nupdate.packages(ask=FALSE)' >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.R

    Rscript /root/update.R

    rm -rf /root/update.R

    echo $'\nUpdate done in R\n'

    #Julia install
    cd /root && wget https://julialang-s3.julialang.org/bin/linux/aarch64/1.7/julia-1.7.1-linux-aarch64.tar.gz && tar xf julia-1.7.1-linux-aarch64.tar.gz && mv ~/julia-1.7.1 ~/julia && ln -s ~/julia/bin/julia /usr/local/bin/julia && rm -rf julia-1.7.1-linux-aarch64.tar.gz

    echo $'#!/root/julia/bin/julia\nusing Pkg\nPkg.update()\n' >> /root/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    chmod a+x /root/update.jl

    /root/update.jl

    echo $'\nUpdate done in Julia\n'

    rm -rf /root/update.jl

}

docker_setup
