############################################
############# basics #######################
############################################

#remove pre-installed texlive
sudo apt-get purge texlive* && sudo rm -rf /usr/local/texlive/* && rm -rf ~/.texlive* && sudo rm -rf /usr/local/share/texmf && sudo rm -rf /var/lib/texmf && sudo rm -rf /etc/texmf && sudo apt-get remove tex-common --purge && rm -rf ~/.texlive

sudo add-apt-repository ppa:danielrichter2007/grub-customizer && sudo add-apt-repository ppa:nilarimogard/webupd8 && sudo add-apt-repository ppa:ozmartian/apps && sudo add-apt-repository ppa:lyx-devel/release && sudo apt-get update && sudo apt-get upgrade -y && sudo apt upgrade -y && sudo apt-get install -y grub-customizer woeusb vidcutter openshot xpad kazam texlive-full texmaker texstudio lyx codeblocks octave weka caffeine redshift redshift-gtk handbrake scala solaar qgis gnome-tweaks gnome-shell-extension-system-monitor gnome-shell-extensions gnome-shell-extension-multi-monitors

sudo snap install --classic eclipse && sudo snap install --classic netbeans && sudo snap install --classic android-studio && sudo snap install --classic code && sudo snap install --classic julia && sudo snap install --classic pycharm-community && sudo snap install spotify && sudo snap install vlc

sudo dpkg -i *.deb && sudo rm -rf *.deb && sudo apt-get install -f

sudo add-apt-repository ppa:graphics-drivers/ppa && sudo apt-get update && sudo apt install ubuntu-drivers-common && ubuntu-drivers devices && sudo ubuntu-drivers autoinstall

######### docker ###############

sudo apt-get remove docker docker-engine docker.io containerd runc && sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo apt-key fingerprint 0EBFCD88 && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io && sudo apt-get install docker-ce=5:19.03.6~3-0~ubuntu-bionic  docker-ce-cli=5:19.03.6~3-0~ubuntu-bionic containerd.io && sudo docker run hello-world

#set-up the docker#
#for OSX
docker run -p 8888:8888 --name ubuntu_1804 -v "/Users/ning/Dropbox":/root/Dropbox -v /Users/ning/Downloads:/root/Downloads -v /Users/ning/Documents:/root/Documents -it isaac2math1804/ubuntu_image:1.02

#for ubuntu
docker run -p 8888:8888 --name ubuntu_1804 -v /home/ning/Data/Dropbox:/root/Dropbox -v /home/ning/Downloads:/root/Downloads -v /home/ning/Documents:/root/Documents -it isaac2math1804/ubuntu_image:1.02

#for windows
docker run -p 8888:8888 --name ubuntu_1804 -v "D:\Dropbox":/root/Dropbox -v "C:\Users\xunin\Downloads":/root/Downloads -v "C:\Users\xunin\Documents":/root/Documents -it isaac2math1804/ubuntu_image:1.02

#ubuntu:bionic
apt-get update && apt-get upgrade -y && apt upgrade -y && apt-get install -y software-properties-common wget nano && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' && apt-get update && apt-get install -y r-base libavfilter-dev cargo libpoppler-cpp-dev libmagick++-dev librsvg2-dev tesseract-ocr-eng libtesseract-dev libleptonica-dev libgmp3-dev libcurl4-gnutls-dev libv8-dev libssl-dev libjpeg62 libxml2-dev libcairo2-dev libudunits2-dev libgeos-dev libgdal-dev clang gcc-7 g++-7 libmpfr-dev libssh2-1-dev libgit2-dev xdotool xclip libcupti-dev codeblocks octave

#check the related mirror
wget -qO - mirrors.ubuntu.com/mirrors.txt

#alter the mirror path manually
#http://mirror.aarnet.edu.au/pub/ubuntu/archive/
#http://archive.ubuntu.com/ubuntu/
nano /etc/apt/sources.list

wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh && bash A*.sh

conda update conda -y && conda update --all -y && conda install -c conda-forge nodejs=15.3.0 -y && pip install linearmodels ipystata stata_kernel && jupyter labextension install jupyterlab-stata-highlight && python -m stata_kernel.install && conda create -n tf anaconda python=3.7 -y && conda activate tf && conda install tensorflow -y && conda install -c conda-forge nodejs=15.3.0 -y && conda create -n pt anaconda python=3.7 -y && conda activate pt && conda install pytorch-cpu torchvision-cpu -c pytorch -y && conda install -c conda-forge nodejs=15.3.0 -y

################################
########### mac on VM ##########
################################

VBoxManage modifyvm "mac" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff && VBoxManage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3" && VBoxManage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0" && VBoxManage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple" && VBoxManage setextradata "mac" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc" && VBoxManage setextradata "mac" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1 && VBoxManage setextradata "mac" VBoxInternal2/EfiGraphicsResolution 1280x720

################################
######### c++ and gcc ##########
################################

sudo apt-get install -y libboost-all-dev libmlpack-dev libmlpack-bin libboost-test-dev libboost-serialization-dev libarmadillo-dev binutils-dev

################################
########### r and r studio  ####
################################

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/' && sudo apt-get update && sudo apt-get install -y r-base libavfilter-dev cargo libpoppler-cpp-dev libmagick++-dev librsvg2-dev tesseract-ocr-eng libtesseract-dev libleptonica-dev libgmp3-dev libcurl4-gnutls-dev libv8-dev libssl-dev libjpeg62 libxml2-dev libcairo2-dev libudunits2-dev libgeos-dev libgdal-dev clang gcc-7 g++-7 libmpfr-dev libssh2-1-dev libgit2-dev xdotool xclip libcupti-dev 

################################
########### julia  #############
################################

# go to your user folder
cd & wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz && tar xf julia-1.5.3-linux-x86_64.tar.gz && sudo ln -s ~/julia-1.5.3/bin/julia /usr/local/bin/julia

#####################################
########### subl and atom ###########
#####################################

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list' && sudo apt-get update && sudo apt-get install atom && wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -&& echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && sudo apt-get update && sudo apt-get install sublime-text && apm install markdown-preview-enhanced file-watcher atom-beautify auto-detect-indentation file-icons git-time-machine highlight-selected language-latex language-markdown minimap minimap-highlight-selected monokai multi-cursor open-recent pigments platformio-ide-terminal script scroll-through-time split-diff tree-view-git-status tree-view-sort atom-language-r grammar-token-limit latex pdf-view language-matlab bracket-colorizer language-stata indent-guide-improved todo-show

code --install-extension akamud.vscode-theme-onedark && code --install-extension alefragnani.numbered-bookmarks && code --install-extension azemoh.one-monokai && code --install-extension CoenraadS.bracket-pair-colorizer-2 && code --install-extension eamodio.gitlens && code --install-extension Equinusocio.vsc-community-material-theme && code --install-extension Equinusocio.vsc-material-theme && code --install-extension equinusocio.vsc-material-theme-icons && code --install-extension esbenp.prettier-vscode && code --install-extension Gimly81.matlab && code --install-extension Gruntfuggly.todo-tree && code --install-extension Ikuyadeu.r && code --install-extension jprestidge.theme-material-theme && code --install-extension julialang.language-julia && code --install-extension kriegalex.vscode-cudacpp && code --install-extension kylebarron.stata-enhanced && code --install-extension mdob2k.stata-language && code --install-extension monokai.theme-monokai-pro-vscode && code --install-extension ms-azuretools.vscode-docker && code --install-extension ms-python.python && code --install-extension ms-python.vscode-pylance && code --install-extension ms-toolsai.jupyter && code --install-extension ms-vscode-remote.remote-containers && code --install-extension ms-vscode-remote.remote-ssh && code --install-extension ms-vscode-remote.remote-ssh-edit && code --install-extension ms-vscode.cpptools && code --install-extension shd101wyy.markdown-preview-enhanced && code --install-extension toasty-technologies.octave && code --install-extension vscode-icons-team.vscode-icons && code --install-extension Yeaoh.stataRun && code --install-extension yzane.markdown-pdf && code --install-extension yzhang.markdown-all-in-one && code --install-extension zhuangtongfa.material-theme

{
    "cmd": ["/usr/bin/pdflatex","$file"],
    "selector": "text.tex.latex"
}

#for mac : /usr/local/texlive/texmf-local/tex/latex
cd ~/Dropbox/texlive_package && sudo cp -r ./imsart /usr/share/texmf/tex/latex && sudo texhash ~/texmf

#####################################
##### cuda 10.1 and cudnn 7.6 #######
#####################################

cd ~/Downloads && sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.168-418.67_1.0-1_amd64.deb && sudo apt-key add /var/cuda-repo-10-1-local-10.1.168-418.67/7fa2af80.pub && sudo apt-get update && sudo apt-get install cuda

#add the following to .bashrc#
# CUDA Config - ~/.bashrc
export PATH=/usr/local/cuda-10.1/bin:/usr/local/cuda-10.1/NsightCompute-2019.3${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
##############################

source ~/.bashrc

#Test cuda
cd /usr/local/cuda-10.1/samples && sudo make
/usr/local/cuda-10.1/samples/bin/x86_64/linux/release/deviceQuery
/usr/local/cuda-10.1/samples/bin/x86_64/linux/release/matrixMulCUBLAS

#cudnn
sudo dpkg -i libcudnn7_7.6.1.34-1+cuda10.1_amd64.deb && sudo dpkg -i libcudnn7-dev_7.6.1.34-1+cuda10.1_amd64.deb && sudo dpkg -i libcudnn7-doc_7.6.1.34-1+cuda10.1_amd64.deb

#Test cudnn
cd /usr/src/cudnn_samples_v7/mnistCUDNN/ && sudo make clean && sudo make && ./mnistCUDNN

############################################
############### anaconda ###################
############################################

wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh && bash A*.sh

conda update conda -y && conda update --all -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c plotly plotly chart-studio && conda install -c plotly plotly-orca && jupyter labextension install jupyterlab-plotly@4.14.3 && jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.14.1 && conda install -c conda-forge octave_kernel -y && pip install linearmodels ipystata stata_kernel && jupyter labextension install jupyterlab-stata-highlight && python -m stata_kernel.install && pip install matlab_kernel && cd /usr/local/MATLAB/R2020a/extern/engines/python && sudo python3 setup.py install --prefix "/home/ning/anaconda3/envs/pymatlab"  && conda create -n tf-gpu anaconda python=3.7 -y && conda activate tf-gpu &&  conda install tensorflow-gpu -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c plotly plotly chart-studio && conda install -c plotly plotly-orca && jupyter labextension install jupyterlab-plotly@4.14.3 && jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.14.1 && conda install -c conda-forge octave_kernel -y && conda create -n pt-gpu anaconda python=3.7 -y && conda activate pt-gpu && conda install pytorch torchvision cudatoolkit=10.0 -c pytorch -y && conda install -c conda-forge nodejs=15.3.0 -y && conda install -c plotly plotly chart-studio && conda install -c plotly plotly-orca && jupyter labextension install jupyterlab-plotly@4.14.3 && jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.14.1 && conda install -c conda-forge octave_kernel -y 

conda create -n PyCL anaconda python=3.7 -y && conda activate PyCL && conda install -c conda-forge pyopencl && conda install -c conda-forge ocl-icd-system && sudo apt-get install libboost-python-dev libboost-thread-dev -y && pip install pycuda


#automatic activate conda base
echo "conda activate" >> ~/.bashrc

#fix the stata_kernel path issue
subl ~/.stata_kernel.conf

#check if unwanted jupyter kernel is installed
jupyter kernelspec list && jupyter kernelspec uninstall #kernel_name

############################################
################ Stata 14/15 ###############
############################################

cd ~/Downloads && mkdir statainstall && tar -xvzf Stata14Linux64.tar.gz -C statainstall && sudo mkdir /usr/local/stata14 && cd /usr/local/stata14 && sudo ~/Downloads/statainstall/install && sudo ./stinit

cd ~/Downloads && mkdir statainstall && tar -xvzf Stata15Linux64.tar.gz -C statainstall && sudo mkdir /usr/local/stata15 && cd /usr/local/stata15 && sudo ~/Downloads/statainstall/install && sudo ./stinit

echo export PATH="/usr/local/stata15:$PATH" >> ~/.bashrc && source ~/.bashrc && sudo chmod -R a+rwx /usr/local/stata15 && sudo chmod -R a+rwx /usr/local/stata14

# fix the libraries: libpng12.so.0 missing #

wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb  && sudo dpkg -i /tmp/libpng12.deb  && rm /tmp/libpng12.deb
