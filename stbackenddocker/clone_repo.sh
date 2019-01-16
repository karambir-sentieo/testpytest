apt-get -y update
apt-get -y install build-essential git wget curl python-pip


# install mongodb and other dependencies
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" >> /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get -y update
apt-get -y install mongodb-org-mongos=3.2.7 mongodb-org-server=3.2.7 libxrender-dev ntp pdftk ghostscript


mkdir -p /var/log/gunicorn
mkdir -p /var/log/api-indexing/
mkdir -p /db/log/
mkdir -p /db/log/sentieo/


mkdir -p /home/ubuntu/Documents
mkdir -p /home/ubuntu/Documents/projects

# clone git repositories
cd /home/ubuntu/Documents/projects
git config --global credential.helper "cache --timeout=36000000"
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieocrypto.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieoexcelbackend.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieofinance.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieographs.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieopackages.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieoscraping.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieosearch.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieotablex.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieouser.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieowebapi.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieowebserverconfig.git
git clone https://${GITHUB_TOKEN}@github.com/usernames/sentieowidgets.git

# setup testing configuration
ln -s sentieowebserverconfig/server_conf/sentieo/testing_conf.json ./conf.json


# install website setups tools
mkdir -p /home/ubuntu/Documents/setups
# cd /home/ubuntu/Documents/setups;

# update Miniconda
conda update -y conda


# install wkhtmltopdf
cd /tmp
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
cp wkhtmltox/bin/wkhtmltopdf /usr/bin/
ln -nfs /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf