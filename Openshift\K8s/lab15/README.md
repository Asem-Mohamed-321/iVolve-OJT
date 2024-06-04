### - Create the demonset yaml file:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/fd44ccbb-6a68-4b0f-884c-c2ac668d6e3f">

```
kubectl apply -f demonset.yml
```
check that pod is deployed
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/eb3a74eb-bae0-4251-a526-bf466cf3f370">

### - taint the minikube node with your value:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/cf2a4d32-ecf0-46fd-9c72-a244a8e411f8">

### - Creat pod yaml file with the wrong tolarent and check its status:
<imgi src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ac7db233-a960-488a-b185-4df0a7c1ffc5">
  
note the pod stays in pending state and never goes in the running state
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/55a80ee2-0863-4003-ab4b-608a1ea1a807">


### - Edit the taolerant value in the pod file to match the taint on the node and ckeck its status:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/85630dcf-51fc-4e32-a60d-98fbe7c9ac8d">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/9e6bf244-89a4-4e14-9327-1e269c04c1a2">
