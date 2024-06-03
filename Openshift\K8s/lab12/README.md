### - Create a namespace called nti:
```
asem@asem-virtual-machine:~/lab12$ kubectl create namespace nti
>> namespace/nti created
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/bee1111c-96ee-4609-a7b0-e1275fa36c31">

### - Apply resource quota to limit resource usage within the namespace: 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/22a253cc-31ee-4ca6-96f5-37a31d89e720">

```
kubectl apply -f ResourceQouta.yml
```
### - Create a Deployment in this namespace for the MySQL pod that uses the ConfigMap and Secret:
#### DefineMySQL database name and user in a ConfigMap. Store the MySQL root password and user password in a Secret
