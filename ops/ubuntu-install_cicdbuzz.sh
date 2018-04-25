sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip python3-pip
sudo apt-get install git
sudo apt-get install supervisor
sudo git clone https://github.com/brianehlert/cicd-buzz.git /opt/cicd-buzz
sudo chmod +x /opt/cicd-buzz
sudo cp /opt/cicd-buzz/ops/cicdbuzz.conf /etc/supervisor/conf.d/
sudo pip3 install -r /opt/cicd-buzz/requirements.txt

sudo supervisorctl update
sudo supervisorctl restart flashpolicyd

# python3 cicd-buzz/app.py
