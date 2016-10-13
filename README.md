# ansiblePlaybooks
This repository holds Ansible Playbook that will allow you to deploy Hadoop on Digital Ocean. May work with AWS or other hosts,
not tested though. (Tested with Ubuntu 16.04 Digital Ocean Droplet) 
*Process to use this deployment:
- Enter IP Address of your hosts in hosts file
- core-site.xml, hdfs-site.xml, mapred-site.xml and yarn-site.xml are the configuration files, which you can tweak as you like, the playbook 
will copy those to your AWS/Digital Ocean machine from your local computer. 
- envs.sh contains the environment variables that are required to be exported on Droplet after Hadoop is installed. Playbook will only copy 
this file to /usr/local/hadoop/ on your droplet. You can execute it before you execute next file. (Execute as : . envs.sh OR source envs.sh) 
- launchHadoop.sh can be used to launch DFS and Yarn on your droplet.Playbook will only copy this file to /usr/local/hadoop/ on your droplet.


Note: you can leave files untouched if you do not want to change any configurations, use all defaults. (This does not apply to hosts file, you
need to enter your host IP address in it, it is mandatory) 

# Once you are done with above setup:
- Run runPlaybooks.sh


Make sure Ansible is installed on your machine. You do not need to install Ansible on DigitalOcean Droplet or AWS Instance.
