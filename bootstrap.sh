#!/usr/bin/env bash

apt-get update
apt-get install -y python3-pip python3-dev libpq-dev git
pip3 install virtualenv

# aliases for django commands
echo "alias djrun=\"python3 manage.py runserver 0.0.0.0:8000\"" >> .bashrc
echo "alias python=\"python3\"" >> .bashrc
echo "alias manage=\"python3 manage.py\"" >> .bashrc
echo "alias pip=\"pip3\"" >> .bashrc

# setting up vitualenv
mkdir /home/vagrant/.virtualenvs
virtualenv -p python3 /home/vagrant/.virtualenvs/proj
source /home/vagrant/.virtualenvs/proj/bin/activate

# install project requirements to virtualenv
cd /vagrant && pip install -r requirements.txt

echo "source ~/.virtualenvs/proj/bin/activate" >> /home/vagrant/.bashrc