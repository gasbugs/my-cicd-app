sudo docker build -t my-app . -f dockerfile
sudo docker run -d -p 3000:3000 --name my-con my-app 
sudo docker rm my-con -f 