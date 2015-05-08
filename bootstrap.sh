apt-get update
apt-get install -y python3-pip python3-dev libpq-dev git
pip3 install django
pip3 install django-toolbelt
echo "alias djrun=\"python3 manage.py runserver 0.0.0.0:8000\"" >> .bashrc
echo "alias python=\"python3\"" >> .bashrc
echo "alias manage=\"python3 manage.py\"" >> .bashrc
echo "alias pip=\"pip3\"" >> .bashrc