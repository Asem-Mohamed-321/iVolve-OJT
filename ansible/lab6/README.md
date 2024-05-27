## Lab6:
Use Ansible Vault to encrypt senesitive information such as database passwords, automate creating a MySQL database, and creat a MySQL user with granted permissions.

## Steps:
### 1- Configure inventory and ansible config files 

### 2- create the vault file, save your sensitive data, and encrypt it using this commad
```
ansible-vault encrypt vault.yml
```

### 3- Write the playbook including these tasks 
#### install mySQL
#### start mySQL service 
#### creat a database
#### create mySQL user 
#### give user privilage 
