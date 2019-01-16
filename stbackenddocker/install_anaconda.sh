# install website setups tools
mkdir -p /home/ubuntu/Documents/setups
# cd /home/ubuntu/Documents/setups;

# install Anaconda
# wget https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh
# bash Anaconda2-5.0.1-Linux-x86_64.sh -b -p /home/ubuntu/Documents/setups/anaconda2/
# echo 'export PATH="/home/ubuntu/Documents/setups/anaconda2/bin:$PATH"' >> /etc/bash.bashrc
# source /etc/bash.bashrc
# export PATH="/home/ubuntu/Documents/setups/anaconda2/bin:$PATH"
conda update -y conda


cd /tmp
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
cp wkhtmltox/bin/wkhtmltopdf /usr/bin/
ln -nfs /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
