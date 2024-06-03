### - Clone the repo to your device:
```
git clone https://github.com/IbrahimmAdel/static-website.git
```

### - Build the docker image and push it to your repo in docker hub:
```
docker build -t reponame/nginx:tag .
docker push username/nginx:tag
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6fb99e6d-7e3c-4ebf-8aad-c8a6e6287570">

### - Create a deployment using the custom nginx image you built:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6621d2fd-bb79-45b0-b1ac-309a8b6d0114">

```
kubectl apply -f deplyment.yml
```

### - Create the service to expose the deployment
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/5f70dea8-4564-49cc-bdf4-dc02152d3144">

```
kubectl apply -f service.yml
```

### - Define a networkpolicythat allow traffic to the NGINX pods only from other pods within the same namespace:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/bed4e60a-5b8d-41d2-a726-057857b5e176">

```
kubectl apply -f NetworkPolicy.yml 
```

### - Enable the NGINX Ingress controllerusing Minikube addons:

```
minikube addons enable ingress
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/b16af5d5-9697-4301-8965-4cc6c2928b8d">

### - Create an Ingressresource:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/e981627d-6074-4be4-832a-bd37d417a0f3">

```
kubectl apply -f ingress.yml
```

### - Update /etc/hosts to map the domain to the Minikube IP address:
```
$ minikube ip
>> 192.168.49.2
```
### - Access the custom NGINX service via the Ingress endpoint using the domain name:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6a91da76-6332-421a-8b77-7929d151e66c">







