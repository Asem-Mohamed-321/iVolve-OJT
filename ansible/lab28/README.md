When using Ansible with AWS, inventory file maintenance will be a hectic task as AWS frequently changes IPs, autoscaling instances, and more. Once your AWS EC2 hosts are spun up, you’ll probably want to talk to them again. With a cloud setup, it’s best not to maintain a static list of cloud hostnames in text files. Rather, the best way to handle this is to use the aws_ec2 dynamic inventory plugin.

### - Install python3, boto3, and botocore
```
sudo apt install python3
sudo apt install python3-pip
pip install boto3
```

### - In your ansible config file Enable blugins uses
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/dcb7378a-9640-4b05-81a1-4dd4cba7e439">

### - create a file with the accepted filename (with aws_ec2.(yml|yaml) at the end) and provide it with the name of the plugin and specify the regions and filters 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/17b6ccae-9d9e-44f0-87ed-9b496151728a">

### - After providing any required options, you can view the populated inventory with ansible-inventory -i lab28.aws_ec2.yml --graph
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/1c1d3bd6-8980-43ff-8549-3222dd9fc2ff">


