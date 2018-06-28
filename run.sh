#run ruby script
#./ruby.2.4.1-setup.sh

#gem install github_records_archiver
github-records-archiver  archive xformation --token 230de768652b3630e7b14039d83cdb920723cbbc

cd archive/
cd xformation/
cd awsscripter/
cd awsscripter/
tar -cvf git-archive-final.tar archive

yum install -y python-pip
yum install -y awscli

#setting time-zone
timedatectl set-timezone Asia/Kolkata

aws s3 cp git-archive-final.tar s3://synectiks-github/

