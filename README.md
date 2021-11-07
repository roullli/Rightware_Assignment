# Rightware_Assignment

**This is the solution to the DevOps Position work assignment done by Rouhollah Ehsani**

Here I will demonstrate how did it go on step by step:

In order to run this locally first you need to pull this repository as follow:

**NOTE:** You need to have installed Docker, Vagrant, and Ansible before hand on you working environment

```
mkdir exercise
cd exercise
git clone git@github.com:roullli/Rightware_Assignment.git 
```

***First Step:***

To run the docker container using vagrant run the following command inside the 'app' directory:
```
vagrant up
```
To check that the container is up and running use the following command:
```
docker ps
```
and to see if the ssh connection has been setup properly test with: 
```
ssh test@172.20.0.4
```
It will prompt to enter the password: 'test'

***2nd Step:***

Then to install the packages and run the Notejam application:
```
ansible-playbook playbook.yml -i ./hosts
```
To see if the application is running and it is healthy browse to:

http://172.20.0.4:8000/

_P.s. Since security was not a requirement for this assignment I ignored to take those into accont and I have just set them as a plaintext in the file. But with som amount of effort and using Environment Variables we could make it secure._


