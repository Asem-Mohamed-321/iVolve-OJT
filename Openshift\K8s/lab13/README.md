### - Create the deployment file with the required configurations ( liveness, readiness, and init container):
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/f18b6922-f7f4-42a6-872c-6a90daab541b">

### - Create the service to expose the deployment:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6bdc2fc2-ceba-4993-96d1-93b0b7b04722">

### - use "port-forward" command to set the host port and check the local site:
```
kubectl port-forward pod-name host-port:container-port
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6eef1d6f-c3e1-46e3-8d99-93da5c424703">


### - Use " describe " command to observe the liveness and the readiness of the pod:

```
kubectl describe pod pod-name
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/69bf529e-e677-4e2a-82df-511275ccbd69">
