# Installing Miniconda
wget -c http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
bash Miniconda-latest-Linux-x86_64.sh -b -p /home/ubuntu/miniconda
export PATH=/home/ubuntu/miniconda/bin:$PATH

#Installing neccesary libraries
conda install -y numpy scipy pandas scikit-learn jupyter

#Can add whatever you want to install
#sudo apt-get -qq install vowpal-wabbit
#sudo apt-get -qq install git

ipython profile create nbserver

printf "\n# Configuration file for ipython-notebook.\n
c = get_config()\n
# Notebook config\n
c.NotebookApp.password = u'"$1"'\n
c.NotebookApp.ip = '*'\n
c.NotebookApp.open_browser = False\n
c.NotebookApp.port = 8888\n" > ~/.ipython/profile_nbserver/ipython_notebook_config.py

jupyter-notebook --config="~/.ipython/profile_nbserver/ipython_notebook_config.py" --certfile=jupyter.pem
