### - Create a deployment yaml file and apply the deplyment
<img src="">
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/79a8cc96-b7df-4ef7-ac45-ca770ead3d27">
```
asem@asem-virtual-machine:~/lab4$ kubectl create -f nginx-deploy.yml 
deployment.apps/nginx-deployment created
```

### - Check the deployment of pods 
```
kubectl get pods
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/21ef3d4e-757a-4379-85fa-6172cb870995">

### - Create a service yaml file 
make sure the selector has the value of the nginx label
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/8c5ec6b2-945e-491f-b9e2-89c84def617e">
```
asem@asem-virtual-machine:~/lab4$ kubectl create -f service.yml 
service/service created
```

### - Use port forwording to access nginx locally
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/dede5963-e81a-4543-82eb-225f98ae5a0c">

### - Check localhost:8080
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a32d8933-01b1-4290-a99a-1526a63f65b0">


<img src="">


