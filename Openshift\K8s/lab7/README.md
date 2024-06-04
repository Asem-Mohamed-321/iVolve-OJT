### - Create a deployment yaml file and apply the deplyment

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

### - Now change the image in the deployment file to httpd and use the port forwarding again and see the results
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a6fa1ca8-fea9-46f3-9830-3f65034712c7">

### - Now undo the rollout to get back to the nginx image and check the rollout history and revisions
use the next command to roll back to an old version
```
kubectl rollout undo deployment/nginx-deployment --to-revision=1
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/3236114f-4978-4340-854f-18970b4f4bf4">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/dff227bb-dedb-42db-81d7-0127d963a7fa">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/c7d2cbdb-1e39-4b81-9378-fc9ccc16536b">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6dc5389a-fe6f-450a-b256-a4e75ac42d5b">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/c89aac7b-a744-4121-9ee2-ddf60427c74f">


