systemctl commands takefrom ---> cd /etc/system/system  ------->systemctl start ngnix or systemctl status backend

systemctl will give an option to configure our application as automatic start/stop and restart path called cd etc/systemd/system



npm install --> it will install what ever dependencies /libraries ---> cd /tmp/package.json/ --------> mkdir /app----> cd app/tmp/



mysql -h 172.31.29.17  -uroot -pExpenseApp@1 < /app/schema/backend.sql


http://54.158.5.25:80-----> public ip of frontend

to check backend is connect with db then we need to use this command 
------
telnet <private ip> port ---> both should be backend only

-----------------------------------------------------------------------

to check front is connect with backend then we need to use below command 
--------

telnet <private ip> port ----> both should be frontend only

----------------------------------------------------------------------------

backend 


5. Include package.json in your project:
Ensure that your package.json file is included in your project directory. This file contains metadata about your project and lists its dependencies.

6. Install dependencies from package.json:
If you're sharing your project with others or deploying it to a server, you can install all the dependencies listed in your package.json file by running:

npm install
This command will install all dependencies (both regular and devDependencies) listed in your package.json file.

That's it! You've now successfully used NodeJS modules with npm and package.json. You can continue adding more dependencies as needed and managing them through your package.json file.

----------
dnf module list --> u can see nodejs latest module and enable it

dnf module disable nodejs -y

dnf module enable nodejs:20 -y

dnf install nodejs -y

npm version will install  in server using above commands

 I AM WRITING WHATEVER I UNDERSTAND....

FIRST CREATE OWN DIRECTORY FOR YOUR PROJECT AT HOME DIRECTORY PLACE ---->MKDIR /APP---> we need use this command like this it will create directory at the home place...

whatever developer files like package.json or nodemoudules.....we need to download at /tmp files present at home directory because all temporary files present at there...

we need to unzip all this developer files at our separate project directory is cd /app---> after entering unzip /tmp/file.zip....

after unzip all files at /app --> then use npm install command at /app --->it will install the libraries/dependencies


-------------------------------------------------------------------


https://github.com/daws-78s/shell-script/blob/main/readme.MD


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---> token

IF U USE THIS COMMAND GITBASH WILL NEVER ASK TOKENS

git config --global credential.helper store




