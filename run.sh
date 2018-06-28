#run ruby script
#./ruby.2.4.1-setup.sh

#gem install github_records_archiver
github-records-archiver  archive xformation --token 183001ebdffb1a0cadd43354b905040517fad146

cd archive/
cd xformation/
cd awsscripter/
cd awsscripter/
tar -cvf git-archive-final.tar archive


#setting time-zone
timedatectl set-timezone Asia/Kolkata

aws s3 cp git-archive-final.tar s3://synectiks-github/

