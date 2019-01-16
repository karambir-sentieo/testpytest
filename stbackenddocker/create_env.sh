# create sentieo virtual environment
cd /home/ubuntu/Documents/projects
conda env create -f sentieowebapi/docs/environment.yml
mkdir -p /opt/conda/envs/sentieo/etc/conda/

mkdir -p /opt/conda/envs/sentieo/etc/conda/activate.d
cd /opt/conda/envs/sentieo/etc/conda/activate.d
touch env_activate.sh
echo "export TEST=123" >> env_activate.sh
echo "export SENTIEO_ROOT=/home/ubuntu/Documents/projects/" >> env_activate.sh
echo "export NLTK_DATA=/home/ubuntu/Documents/setups/nltk_data" >> env_activate.sh

mkdir -p /opt/conda/envs/sentieo/etc/conda/deactivate.d
cd /opt/conda/envs/sentieo/etc/conda/deactivate.d
touch env_deactivate.sh
echo "export TEST=" >> env_deactivate.sh
echo "export SENTIEO_ROOT=" >> env_deactivate.sh
echo "export NLTK_DATA=" >> env_deactivate.sh
ln -s /opt/conda/envs/sentieo/bin/python /usr/bin/py
chmod 777 /usr/bin/py
ln -s /opt/conda/envs/sentieo/bin/phantomjs /usr/bin/phantom
chmod 777 /usr/bin/phantom


# install nltk
mkdir -p /usr/share/nltk_data/
mkdir -p /home/ubuntu/Documents/setups/nltk_data
py -c "import nltk;nltk.download('punkt', download_dir='/usr/share/nltk_data')"


# echo "alias sa='source activate sentieo'" >> /etc/bash.bashrc
# echo "alias sd='source deactivate'" >> /etc/bash.bashrc
# echo "export LC_CTYPE='en_US.UTF-8'" >> /etc/bash.bashrc
# export "LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc
echo "export LC_ALL=C" >> /etc/bash.bashrc


# install sentieopackages/script_setup
source activate sentieo
pip install -e /home/ubuntu/Documents/projects/sentieopackages/script_setup/