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
##### Create the configmap file
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2fb5fb96-412f-4345-b22d-07c2a67276ba">

##### Create the secret file 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/c50363ec-19ed-4ab1-b9d7-b729a2b6ecc7">

##### Create the deployment
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/f3675de5-8e2f-4fed-96af-b9c653007a38">
