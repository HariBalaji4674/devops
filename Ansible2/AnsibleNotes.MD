Ansible Introduction:
---------------------
What is Configuration Management?


a) What is Ansible?

1. Ansible Is an open soure it automation tool
2. Ansible as a tool automates the provisioning , configuration management, app deployment with secure  way,orchestration and many other manual process
3. Ansible automation used to install software automate daily tasks,provisioning,security ,patch systems etc..
4. It can automate repetative tasks etc..


b) What Programming language is used to build Ansible? ---> Python Programming Language 

c) How ansible connects to another servers ? ---> Ansibel uses SSH In background and makes the configurations between two servers 


d) Will Ansible used agents to connect and install software in nodes --> no Ansibel does not use agents to run the scripts or to install the software.


e) What kind of language is Ansible ? 1) Ansible is a Declarative Language


f) What is declarative language ?

1) Declarative Language is easy syantax and does not follow particular sequence to install the softwares 
2) As ansible build with python  by default it supports easy syantax and structure 


g) What are the adavantages of Ansible over Shell Scripting?

1) No need to log in to run the scripts --> ansible will connect and run automatically in the nodes 
2) No need to write the sequence steps --> ansible can write the conditions anywhere it will get that
3) shell has more complicated syntax --> ansible has simple syntax
4) in shell we need to explicitly mention the validations --> ansible by default will come up with validations
5) Shell script is homogeneous (Different commands for different os) --> ansible will change commands based on OS

h) Does ansible supports windows and linux ? 

1) Yes Ansible supports Both linux and windows 
2) Linux is used protocol is used SSH Authentication uses
3) Windows is used protocol connect with winRM

i) What is diff between puppet and ansible ?

1) Pull and push Mechanism
2) Master slave and AgentLess
3) XML Format and YAML Scripting Format
4) Complex Structure and Simple Structure
5) No Inventory Files and Has inventroy files where store all server details 

j) Does it depends on different cloud platforms

ansible does not depends on cloud platforms
the cloud platform should allow to configure with shh 
and it should be public cloud and shh for linux and winRMfor windows

What is ansible playbooks ?

A Playbook is file where we mention different commands which needs to be executed when we run that file by using command called
ansible-playbook -i inventory file <palybookfile>

Playbook is in YAML Format

what is ansible adhoc commands?
when we need to execute some 2-3 commands we used to run through command line tool is called ansible adhoc commands
syntax:
ansible -i inventoryfile hostnames -m "modulename" -a "arguments"

what is ansible roles?

Ansible roles is simple structure to create a ansible-playbook in a more efficient way
it makes a structure of playbook in more efficient way
when we are writing any complex playbook we need to use ansible roles
roles will create bunch of files like below each has own definitions:
------------------------------------ 
templates
README.md  
defaults  
handlers  
meta  
tasks  
tests  
vars

syntax:
-------
ansible-galaxy role init <filenameto create>

git hub repository--> ansible roles examples
https://github.com/ansible/ansible-examples 


Procedure of ansible:
--------------------
Before ansible: --> chef and puppet (Pull Mechanism)

it follows pull mechanism --> it means there should be one chef server and connected with another server/host in that one agent will be there to run the scripts 

first write the scripts and sent to chef server and agent in the node will fetch every 30 min if there are any code changes if there any changes it will run script 

After ansible: Ansible Server :  (Push Mechanism)
-------------------------------

No Agent(AgentLess) in host or nodes --> uses SSH machnism to connect
whenevr there is changes in script we can push the changes to host/node  


Ansible 
-----------------
How to connect to node server with ansible server

ansible -i <nodeipaddress>, all -e <nodeusername> -e <nodepassword> -m ping 
ansible -i 172.31.83.56, all -e ansible-user=centos -e ansible-password=DevOps321 -m ping


inventory file: --> Contains the list of servers or hosts connected to the Ansible Server
------------------
192.189.176.98
145.187.23.000
[webserver]
nginxserver1.devopspractice.online

[database]
mangodbserver1.devopspractice.online
mangodbserver2.devopspractice.online
mangodbserver3.devopspractice.online
mangodbserver4.devopspractice.online

[ins:childen]
webserver
database


Scenario:1 Install nginx and start nginx
writing yaml file 


to check any dns server is updated or not 
nslookup url 

192.187.164.79
192.187.165.79
192.188.164.79

[mongodb]
joindevops1-in-db-mongodb-devopspractice.com
joindevops2-in-db-mongodb-devopspractice.com
joindevops3-in-db-mongodb-devopspractice.com

[mysql]
joindevops-in-db-mysql-devopspractice.com
joindevops-in-db-mysql-devopspractice.com
joindevops-in-db-mysql-devopspractice.com


 


