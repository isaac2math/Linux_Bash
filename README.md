# my bash files for installing necessary machine learning and data science packages on Ubuntu dockers

the file includes the installation and fine tuning of 

* Python (via Anaconda or Miniforge, depending on whether your CPU is x86-64 or arm) 
* R
* Julia
* Octave
* texlive
* Stata
* all necessary C++ files (Fortran, MKL, openBLAS, etc)
* Docker 


## step 0: install docker on your OS ( https://docs.docker.com/get-docker/ )
## step 1: install docker container for ubuntu 20.04 or 22.04 

see the following command using arm64 ubuntu as an example:

* you might want to use x86-64 if you are using x86-64 CPU (Intel, AMD)
* I am linking my Dropbox, Downlodas, and Documents folders into Ubuntu docker. This will allow me to visit these MacOS folders directly from Ubuntu container
* I also name this container as **ubuntu**

<br>

    *docker run --name ubuntu \ 
    -v /Users/ning/Dropbox:/root/Dropbox \ 
    -v /Users/ning/Downloads:/root/Downloads \ 
    -v /Users/ning/Documents:/root/Documents \ 
    arm64v8/ubuntu:20.04*

## step 2: run docker_setup.sh

Before you start, save docker_check.sh and docker_setup.sh on your Documents folder (if you use mac)

* you can run it outside (as follows) the docker container after you run "docker start ubuntu" 

<br>

    *docker exec ubuntu bash /root/Documents/docker_setup.sh*

or 

* you can run it inside (as follows) the docker container after you run "docker start -i ubuntu" 

<br>

    *bash /root/Documents/docker_setup.sh*

# step 3: routine update check

After you finish the previous step, you can automatically do the Linux/R/Julia/Python/... update using docker_check.sh

* you can run it outside (as follows) the docker container after you run "docker start ubuntu" 

<br>

    *docker exec ubuntu bash /root/Documents/docker_check.sh*

or 

* you can run it inside (as follows) the docker container after you run " docker start -i ubuntu " 
  
<br>

    *bash /root/Documents/docker_check.sh*