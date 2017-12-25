sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install git 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl status mongodb
sudo git clone https://github.com/djubreel/UserManager.git
sudo chmod 777 UserManager/
cd UserManager
sudo echo "PORT=3000" >> .env
sudo echo "DB_URL='mongodb://localhost:27017/local'" >> .env
npm install   
npm start
