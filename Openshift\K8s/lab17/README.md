# Task:
- What is kubernetes operator ? 
- Using minikube Deploy agroCd and ELK using  Operators 
- Explore the capabelites of operators for application lifecycle management

# Steps:
## Kubernetes Operator
A Kubernetes Operator is a software extension that makes use of custom resources to manage applications and their components more easily and swiftly.
Operators are designed to automate the management of complex stateful applications on top of Kubernetes.

## Deploy AgroCD using Operators:
-creat a namespace for argocd
```
ubectl create namespace argocd
```
-install argocd using the command:
```
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/29b8c2a9-310b-4a43-b049-2ae93e1c9b2f">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/9d68b69a-20fd-407b-8d7e-468c96e6c8bd">

-expose the ArgoCD service 
using the next command:
```
kubectl port-forward svc/argocd-server -n argocd 8090:443
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/048ed707-45eb-45bf-a888-1e17828b4f74">

-access the ArgoCD UI

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/3e35085b-4bce-413f-b2b9-a6c40b82e232">

username : "admin"
you can get the admin password using this command :
```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/fddfb63f-e85c-4bbe-bc61-f14da76012fe">

## Deploying ELK using operators
1- Deploy ElsaticSearch using the next two commands:
```
kubectl create -f https://download.elastic.co/downloads/eck/2.13.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.13.0/operator.yaml
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/76e40eff-99a0-4db7-b3b1-94fa64780a0e">

2- Deploy Logstach 

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/036caded-21a2-407d-bcee-bb4d20a740cc">

```
kubectl apply -f logstach
```

3- Deploy kibana 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/7905c407-ab6a-4db9-b05b-439cc57a2fa6">

```
kubectl apply -f kibana.yml
```

