### - install helm if you dont have it already using the following commands:
```
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh
```

### - Create the helm chart using the next command:
```
helm create chart-name
```
helm then creates the directory structure of your chart 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/b7ce5c4a-30bd-42d4-81df-ffbaf62ec8e7">

### - In the deployment.yaml file configure your deployment and determin which argument you want as a variable:
note : in our case we don't need to change anything
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/bf77a850-a882-4422-957e-f21a928281b4">

### In the value.yaml file configure your variables:
note : in our case we don't need to change anything
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/724de610-4b78-4bd9-8e49-ce3f4b291d1a">

### - Use the command " helm template " to see a template of what is going to be deployed:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/30c0aca0-2756-4a11-8d39-3659a048daa3">

### Use the command " helm install " to deploy your release:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/389efdab-8c72-4020-a1ba-9e673d30a971">


### - Use the port-forward to test your deployment:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/16c45d00-3b9a-4194-9893-74607a39c534">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/de98e0ec-be78-4dec-beea-c7ca7665478f">


### - You can use helm for making versions and rollback of your deployment:
update your deployment file and the Chart.yml and use the command :
```
helm upgrade release-name chart-name
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6b580d34-a811-4597-9791-2035986de707">

### - Use " helm delete " command to delete a release:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/aca9f7d3-ee0d-44f0-8b64-c762dbd1ed75">
