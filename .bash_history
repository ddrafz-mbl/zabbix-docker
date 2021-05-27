#1622134471
docker ps
#1622134474
docker images
#1622134476
clear
#1622134484
cat /os-release
#1622134491
cat /etc/os-release
#1622134499
clear
#1622134525
vi zabbixfile.sh
#1622134555
clear
#1622134557
vi zabbixfile.sh
#1622134634
ls -la
#1622134645
chmod +x zabbixfile.sh 
#1622134646
ls -la
#1622134650
./zabbixfile.sh 
#1622134788
docker network ls
#1622134809
vi dockerid.sh
#1622134891
chmod +x dockerid.sh 
#1622134895
./dockerid.sh 
#1622134908
clear
#1622134977
ls -l
#1622134990
clear
#1622134993
./zabbixfile.sh 
#1622135073
docker ps -a
#1622135190
./dockerid.sh 
#1622135195
docker ps
#1622135200
docker images
#1622135202
clear
#1622135421
mkdir -p /var/jenkins_home
#1622135429
chown -R 1000:1000 /var/jenkins_home/
#1622135444
docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -d --name jenkins jenkins/jenkins:lts
#1622135527
cat /var/jenkins_home/secrets/initialAdminPassword
#1622136120
268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f268465fdcc654d7ca5f5a35ed851e00f
#1622136122
clear
#1622136139
hostnamectl 
#1622136146
cd
#1622136147
pwd
#1622136150
ls -l
#1622136165
vi dockerid.sh 
#1622136300
man docker
#1622136302
clear
#1622136305
docker --help
#1622136351
docker ls
#1622136363
docker ps --help
#1622136370
clear
#1622136381
docker ps -qa
#1622136384
docker ps -aq
#1622136390
clear
#1622136403
ifconfig
#1622136490
docker log
#1622136495
docker log --help
#1622136505
docker ps -a
#1622136510
docker log caa
#1622136528
docker log jenkins
#1622136545
docker log jenkins/jenkins:lts
#1622136549
clear
#1622136635
vi manual-zabbix.sh ; chmod +x manual-zabbix.sh
#1622136871
cat manual-zabbix.sh 
#1622136875
ls -l
#1622136885
vi manual-zabbix.sh 
#1622136909
clear
#1622136951
docker ps -a
#1622136961
du -sh /
#1622136913
./manual-zabbix.sh 
#1622136974
docker ps -a
#1622136990
./dockerid.sh 
#1622137008
docker ps -a
#1622137011
ifconfig
#1622137024
docker network rm $(docker network ls -q)
#1622137030
ifconfig
#1622137035
vi dockerid.sh 
#1622137076
cat dockerid.sh 
#1622137084
docker ps -a
#1622137096
rm -rf /var/jenkins_home/
#1622137106
yum cleam all
#1622137111
yum clean all
#1622137143
docker images
#1622137121
./manual-zabbix.sh 
#1622137181
docker ps -a
#1622137190
./dockerid.sh 
#1622137197
ifconfig
#1622137202
docker images
#1622137223
vi manual-zabbix.sh 
#1622137252
clear
#1622137256
car manual-zabbix.sh 
#1622137260
clear
#1622137262
cat manual-zabbix.sh 
#1622137335
yum install git -y ; yum install curl -y
#1622137357
which curl
#1622137360
which git
#1622137366
git add .
#1622137381
ls
#1622137409
mv zabbixfile.sh zabbix-docker.sh 
#1622137411
ls -l
#1622137445
clear
#1622137447
ls -l
#1622137513
git init
#1622137530
which git
#1622137554
git commit -m "zabbix-pro"
#1622137594
git commit -m "zabbix-docker.sh"
#1622137606
git branch -M main
#1622137614
git branch -M mester
#1622137634
git init
#1622137636
git remote add origin https://github.com/ddrafz-mbl/zabbix-docker.git
#1622137643
git branch -M main
#1622137651
git push -u origin main
#1622137728
ls -la
#1622137733
pwd
#1622137747
git remote -v
#1622137756
git status
