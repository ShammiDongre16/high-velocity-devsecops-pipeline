clear
sudo sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf
sudo apt-get update && sudo apt-get upgrade -y
sudo systemctl enable --now docker
sudo apt-get purge -y docker.io docker-doc docker-compose podman-docker containerd runc
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo systemctl status docker --no-pager
sudo usermod -aG docker $USER
newgrp docker
docker ps
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community
sudo apt-get install -y wget apt-transport-https gnupg lsb-release
wget -qO - https://github.io | sudo apt-key add -
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://github.io | sudo gpg --dearmor -o /etc/apt/keyrings/trivy.gpg
sudo rm -f /etc/apt/keyrings/trivy.gpg
wget -qO- https://github.io | sudo gpg --dearmor -o /etc/apt/keyrings/trivy.gpg
echo "deb [signed-by=/etc/apt/keyrings/trivy.gpg] https://github.io $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install -y trivy
trivy --version
wget -qO- https://github.io | sudo gpg --dearmor -o /etc/apt/keyrings/trivy.gpg
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" | sudo tee /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy -y
trivy --version
curl -s https://ifconfig.me && echo ""
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
echo "vm.max_map_count=524288" | sudo tee -a /etc/sysctl.conf
echo "fs.file-max=131072" | sudo tee -a /etc/sysctl.conf
docker rm -f sonarqube
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community
docker logs --tail 20 -f sonarqube
sudo sysctl -w vm.max_map_count=524288
echo "vm.max_map_count=524288" | sudo tee -a /etc/sysctl.conf
free -h
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl -w vm.max_map_count=524288
echo "vm.max_map_count=524288" | sudo tee -a /etc/sysctl.conf
docker rm -f sonarqube
docker run -d --name sonarqube   -p 9000:9000   -e SONAR_SEARCH_JAVAADDITIONALOPTS="-Xms256m -Xmx256m"   sonarqube:latest
docker logs --tail 30 sonarqube
clear
ls
dockers ps
docker ps
docker ps -a
docker run hello-world
docker run -d -p 8080:80 nginx
sudo sysctl -w vm.max_map_count=524288
sysctl vm.max_map_count
docker ps -a
docker start sonarqube
docker logs --tail 20 -f sonarqube
mkdir -p .github/workflows
touch .github/workflows/devsecops.yml
vim .github/workflows/devsecops.yml
git add .github/workflows/devsecops.yml
git commit -m "ci: integrate automated sonarqube gate"
git push origin main
git init
git branch -M main
git remote add origin https://github.com/ShammiDongre16
git add .github/workflows/devsecops.yml
git commit -m "ci: integrate automated sonarqube gate"
git push -u origin main
git remote add origin https://github.com/ShammiDongre16/high-velocity-devsecops-pipeline
trivy --version
sudo docker logs -f sonarqube-server
sudo docker run -d   --name sonarqube-server   -p 9000:9000   --stop-timeout 3600   sonarqube:community
sudo docker logs -f sonarqube-server
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
sudo ulimit -n 131072
sudo ulimit -u 8192
clear
sudo tee -a /etc/security/limits.conf <<EOF
ubuntu soft nofile 131072
ubuntu hard nofile 131072
ubuntu soft nproc 8192
ubuntu hard nproc 8192
EOF

sudo tee -a /etc/sysctl.conf <<EOF
vm.max_map_count=524288
fs.file-max=131072
EOF

sudo sysctl -p
sudo docker run -d   --name sonarqube-server   -p 9000:9000   --stop-timeout 3600   sonarqube:community
sudo docker rm -f sonarqube-server
sudo docker run -d   --name sonarqube-server   -p 9000:9000   --stop-timeout 3600   sonarqube:community
sudo docker logs -f sonarqube-server
git remote set-url origin https://github.com/ShammiDongre16/high-velocity-devsecops-pipeline
git push -u origin main
git pull origin main --rebase
git push -u origin main
ls
git push -u origin main
curl -s https://ifconfig.me && echo ""
clear
git push -u origin main
sudo sysctl -w vm.max_map_count=524288
docker start sonarqube
curl -s https://ifconfig.me && echo ""
docker exec -it sonarqube bash
docker rm -f sonarqube
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community
