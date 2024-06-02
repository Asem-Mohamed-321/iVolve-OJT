

### - Create a YAML file for the statefulset 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/272a0cfb-84c2-4754-9810-0897e926abf9">

```
asem@asem-virtual-machine:~/lab5$ kubectl create -f mysql-statefulset.yml 
statefulset.apps/mysql created
```

### - Create the service 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/87607178-5d09-4d86-9889-103dcef54b72">

```
asem@asem-virtual-machine:~/lab5$ kubectl create -f service.yml 
service/mysql created
```


### - Test the MySQL database

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/436dcc3c-e8a4-4f17-bbce-a310e5ead7e5">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/86e5b984-aa9f-466f-ad00-cf8f421f424c">
