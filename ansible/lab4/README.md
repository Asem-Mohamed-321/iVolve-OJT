## Lab4:
Install and and configure an Ansible automation platform with at least one managed host, and then perform ad-hoc commands to check functionality.

## steps: 
### 1- configure ssh service
```
sudo apt install openssh-server #install openssh
systemctl status ssh		#start ssh service
sudo ufw allow ssh		#allow ssh on the firewall
```
### 2- install ansible core 
```
sudo apt install ansible-core	#install ansible on your control node
```
### 3- build the inventory and ansible configurations files 
```
vim inventory 			#configure your managed hosts
vim ansible.cfg			#default ansible configurations
```
### 4- generate the ssh key and test the connection 
```
ssh-keygen	                		#generating an ssh key
ssh-copy-id <username>@<ip>     #copy the key id
ssh <username>@<ip>            	#test the ssh connection
exit			                    	#exit the ssh connection
```

### 5- test ansible using an ad-hoc command
```
ansible all -m file -a "name=file11 state=touch" -i ./inventory   #creating a file named file11 on the managed hosts
```

