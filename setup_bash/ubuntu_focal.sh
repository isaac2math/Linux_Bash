##################################
############# basics #############
##################################

sudo apt-get update && sudo apt-get upgrade -y && sudo apt upgrade -y && sudo apt-get install -y openshot xpad kazam texlive-full texmaker texstudio lyx codeblocks octave weka redshift redshift-gtk handbrake scala solaar qgis gnome-tweaks gnome-shell-extension-system-monitor gnome-shell-extensions

##################################
############# docker #############
##################################

#mac
docker run -p 8888:8888 --name ubuntu_2004 -v /Users/ning/Dropbox:/root/Dropbox -v /Users/ning/Downloads:/root/Downloads -v /Users/ning/Documents:/root/Documents -it ubuntu:20.04

#mac-arm64
docker run -p 8888:8888 --name ubuntu_2004 -v /Users/ning/Dropbox:/root/Dropbox -v /Users/ning/Downloads:/root/Downloads -v /Users/ning/Documents:/root/Documents -it arm64v8/ubuntu:20.04

#check the related mirror
wget -qO - mirrors.ubuntu.com/mirrors.txt

#alter the mirror path manually
#http://mirror.aarnet.edu.au/pub/ubuntu/archive/
#http://archive.ubuntu.com/ubuntu/
nano /etc/apt/sources.list

#R arm64
apt-get update && apt-get upgrade -y && apt upgrade -y && apt-get install -y software-properties-common wget nano gfortran libreadline6-dev libx11-dev libxt-dev libpng-dev libjpeg-dev libcairo2-dev xvfb libzstd-dev screen wget zlib1g-dev libbz2-dev liblzma-dev libpcre2-dev libcurl4-openssl-dev openjdk-11-jdk cmake clang gcc-7 g++-7 && cd /usr/local/src && wget https://cran.rstudio.com/src/base/R-4/R-4.1.2.tar.gz && tar zxvf R-4.1.2.tar.gz && cd R-4.1.2 && ./configure --enable-R-shlib && make && make install && apt-get install -y libavfilter-dev cargo libpoppler-cpp-dev libmagick++-dev librsvg2-dev tesseract-ocr-eng libtesseract-dev libleptonica-dev libgmp3-dev libcurl4-gnutls-dev libv8-dev libssl-dev libjpeg62 libxml2-dev libcairo2-dev libudunits2-dev libgeos-dev libgdal-dev clang gcc-7 g++-7 libmpfr-dev libssh2-1-dev libgit2-dev xdotool xclip libglu1-mesa-dev freeglut3-dev mesa-common-dev gcc-7 g++-7 gfortran-7 libx11-dev libboost-all-dev libmlpack-dev libboost-test-dev libboost-serialization-dev libarmadillo-dev binutils-dev

#R x86-64
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' && apt-get update && apt-get install -y r-base libavfilter-dev cargo libpoppler-cpp-dev libmagick++-dev librsvg2-dev tesseract-ocr-eng libtesseract-dev libleptonica-dev libgmp3-dev libcurl4-gnutls-dev libv8-dev libssl-dev libjpeg62 libxml2-dev libcairo2-dev libudunits2-dev libgeos-dev libgdal-dev clang gcc-7 g++-7 libmpfr-dev libssh2-1-dev libgit2-dev xdotool xclip libcupti-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev gcc-7 g++-7 gfortran-7 libx11-dev libmkl-dev libboost-all-dev libmlpack-dev libboost-test-dev libboost-serialization-dev libarmadillo-dev binutils-dev

#Julia x86-64
cd ~ && wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.1-linux-x86_64.tar.gz && tar xf julia-1.7.1-linux-x86_64.tar.gz && mv ~/julia-1.7.1 ~/julia && ln -s ~/julia/bin/julia /usr/local/bin/julia

#Julia arm64
wget https://julialang-s3.julialang.org/bin/linux/aarch64/1.7/julia-1.7.1-linux-aarch64.tar.gz && tar xf julia-1.7.1-linux-aarch64.tar.gz && mv ~/julia-1.7.1 ~/julia && ln -s ~/julia/bin/julia /usr/local/bin/julia

#miniforge arm64
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh && bash M*.sh

#miniforge x86-64
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh && bash A*.sh

conda update conda -y && conda update --all -y && conda install -c conda-forge matplotlib -y && conda install -c anaconda seaborn -y &&conda install -c conda-forge scikit-learn -y && conda install -c conda-forge pandas -y && conda install -c conda-forge jupyterlab -y && conda install -c conda-forge nodejs -y && conda install -c conda-forge octave_kernel -y && conda install -c anaconda statsmodels -y && conda install -c anaconda llvm -y && conda install -c numba numba -y && conda install -c conda-forge stata_kernel && jupyter labextension install jupyterlab-stata-highlight && python -m stata_kernel.install

#####################################
########### subl and atom ###########
#####################################

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list' && sudo apt-get update && sudo apt-get install atom -y && wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -&& echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && sudo apt-get update && sudo apt-get install sublime-text -y && apm install markdown-preview-enhanced file-watcher atom-beautify auto-detect-indentation file-icons git-time-machine highlight-selected language-latex language-markdown minimap minimap-highlight-selected monokai multi-cursor open-recent pigments platformio-ide-terminal script scroll-through-time split-diff tree-view-git-status tree-view-sort atom-language-r grammar-token-limit latex pdf-view language-matlab bracket-colorizer language-stata indent-guide-improved todo-show

###################################
#### c++, gcc, r and r studio  ####
###################################

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' && sudo apt-get update && sudo apt-get install -y r-base libavfilter-dev cargo libpoppler-cpp-dev libmagick++-dev librsvg2-dev tesseract-ocr-eng libtesseract-dev libleptonica-dev libgmp3-dev libcurl4-gnutls-dev libv8-dev libssl-dev libjpeg62 libxml2-dev libcairo2-dev libudunits2-dev libgeos-dev libgdal-dev clang gcc-7 g++-7 libmpfr-dev libssh2-1-dev libgit2-dev xdotool xclip libcupti-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev gcc-7 g++-7 gfortran-7 libx11-dev libmkl-dev libboost-all-dev libmlpack-dev libboost-test-dev libboost-serialization-dev libarmadillo-dev binutils-dev

################################
########### julia  #############
################################

cd /home/ning/ && wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.1-linux-x86_64.tar.gz && tar xf julia-1.7.1-linux-x86_64.tar.gz && mv ~/julia-1.7.1 ~/julia && sudo ln -s ~/julia/bin/julia /usr/local/bin/julia

###############################
########### texlive ###########
###############################

cd ~/Data/Dropbox/texlive_package && sudo cp -r ./imsart /usr/share/texmf/tex/latex && sudo texhash ~/texmf

########################################
############### anaconda ###############
########################################

#x86_64

wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh && bash A*.sh

conda update conda -y && conda update --all -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c conda-forge octave_kernel -y && conda install -c conda-forge linearmodels -y && conda install -c conda-forge stata_kernel -y && pip install ipystata && jupyter labextension install jupyterlab-stata-highlight && python -m stata_kernel.install && conda create -n tf anaconda python=3.7 -y && conda activate tf && conda install tensorflow -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c conda-forge octave_kernel -y && conda create -n pt anaconda python=3.7 -y && conda activate pt && conda install pytorch torchvision torchaudio -c pytorch -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c conda-forge octave_kernel -y

#miniforge: mac m1
conda install -c conda-forge matplotlib -y && conda install -c anaconda seaborn -y &&conda install -c conda-forge scikit-learn -y && conda install -c conda-forge opencv -y && conda install -c conda-forge pandas -y && conda install -c conda-forge jupyterlab -y && conda install -c conda-forge nodejs -y && conda install -c conda-forge octave_kernel -y && conda install -c anaconda statsmodels -y && conda install -c anaconda llvm -y && conda install -c numba numba -y

conda install -c conda-forge pymc3 -y && conda install -c conda-forge arviz -y && conda install -c conda-forge bambi -y && conda install -c conda-forge aesara -y && conda install -c conda-forge jax -y

##########################################
################ Stata 14 ################
##########################################

cd ~/Downloads && mkdir statainstall && tar -xvzf Stata14Linux64.tar.gz -C statainstall && sudo mkdir /usr/local/stata14 && cd /usr/local/stata14 && sudo ~/Downloads/statainstall/install && sudo ./stinit

sudo add-apt-repository ppa:linuxuprising/libpng12 -y && sudo apt update && sudo apt install libpng12-0 libncurses5 -y

echo export PATH="/usr/local/stata14:$PATH" >> ~/.bashrc && source ~/.bashrc && sudo chmod -R a+rwx /usr/local/stata14
