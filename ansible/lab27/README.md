# In this lab we divide our playbook to reusable roles that can be used indvidually 

### - First apply " ansible-galaxy init <role_name> " command to automatically create role directory
```
    ansible-galaxy init docker_role
    ansible-galaxy init jenkins_role
    ansible-galaxy init os_role

```
### - Use the command " tree . " to see the structure of your roles
```
asem@asem-virtual-machine:~/iVolve-OJT$ tree ansible/lab27/
ansible/lab27/
├── ansible.cfg
├── asem-ssh.pem
├── docker_role
│   ├── defaults
│   │   └── main.yml
│   ├── files
│   ├── handlers
│   │   └── main.yml
│   ├── meta
│   │   └── main.yml
│   ├── README.md
│   ├── tasks
│   │   └── main.yml
│   ├── templates
│   ├── tests
│   │   ├── inventory
│   │   └── test.yml
│   └── vars
│       └── main.yml
├── inventory
├── jenkins_role
│   ├── defaults
│   │   └── main.yml
│   ├── files
│   ├── handlers
│   │   └── main.yml
│   ├── meta
│   │   └── main.yml
│   ├── README.md
│   ├── tasks
│   │   └── main.yml
│   ├── templates
│   ├── tests
│   │   ├── inventory
│   │   └── test.yml
│   └── vars
│       └── main.yml
├── lab27.yml
└── os_role
    ├── defaults
    │   └── main.yml
    ├── files
    ├── handlers
    │   └── main.yml
    ├── meta
    │   └── main.yml
    ├── README.md
    ├── tasks
    │   └── main.yml
    ├── templates
    ├── tests
    │   ├── inventory
    │   └── test.yml
    └── vars
        └── main.yml

```
in each role directory you will find:
defaults/main.yml: Default variables for the role.
files/: Files to be copied to the remote server.
handlers/main.yml: Handlers that can be used in tasks.
meta/main.yml: Metadata about the role, including dependencies.
tasks/main.yml: Main list of tasks to be executed by the role.
templates/: Jinja2 templates that can be used for configuration files.
vars/main.yml: Variables for the role.
tests/: Test inventory and test playbook for the role.

### - In the role/tasks/main.tf write the plays related to this role 
<img src="">
for docker role :
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/95e9fca4-f518-4cd6-90ba-2d71b71d0c9d">

for jenkins role :
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d6512c03-0a69-4ddc-a94b-db2c71a136f3">

for openshift cli role :
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/48f4a774-c8b3-496e-936c-01aaa31854e1">

### - In the main playbook you can specify which roles to apply on the top of the playbook as shown below 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ac58619d-94b3-4d4f-a997-0711c6229c3b">

### - Now you can run the main playbook and make sure you specify the key file and the inventory:
```
ansible-playbook -i inventory --private-key "asem-ssh.pem" -u ubuntu lab27.yml 
```
The output should be like this :
```
PLAY [webservers] ******************************************************************************************************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************************************************************************************
ok: [ec2-3-230-150-33.compute-1.amazonaws.com]

TASK [docker_role : uninstall old docker packages] *********************************************************************************************************************************************************
changed: [ec2-3-230-150-33.compute-1.amazonaws.com]

TASK [docker_role : ubdate apt] ****************************************************************************************************************************************************************************
changed: [ec2-3-230-150-33.compute-1.amazonaws.com]

.
.
output omitted ...
.
.
TASK [jenkins_role : Start and enable Jenkins service] *****************************************************************************************************************************************************
changed: [ec2-3-230-150-33.compute-1.amazonaws.com]

PLAY RECAP *************************************************************************************************************************************************************************************************
ec2-3-230-150-33.compute-1.amazonaws.com : ok=1   changed=28    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
```


