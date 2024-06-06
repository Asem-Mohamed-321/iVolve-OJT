# Task:
-Clone App. & Dockerfile and push them to your Repo

-Set up OpenShift environment

-Set up pipeline to deploy App. Using Jenkinsfile

-Use Jenkins shared libraries

# Steps:
## -Clone the app and the docker file and push them to your repo 
using the next commands 

```
git clone <repo-link>
```
```
git push -u origin main
```

## -Set the OpenShift environment
install openshift cli usng the next commands :
```
curl -LO https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz
tar -xvf oc.tar.gz
sudo mv oc /usr/local/bin/
```
login to the openshift cluster
```
oc login
```

## - Configure your global shared library on jenkins 
<img src ="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/32319dff-91c8-47f7-b396-21e872723cff">

## - Set up your jenkins pipeline and Jenkinsfile
set your credintials:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/62bd41bf-e22c-447a-bd05-83a7782f93bb">
set your pipeline to use the repo with the jenkinsfile in it:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/dac5aa47-152c-4b75-8b32-5d1ed10f6c35">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/df272b28-9966-4b72-9e2f-dbc12137a6e3">

set the deployment and service yml files the oc will use for the deployment
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6ca91f98-d805-4af5-9917-c194f0ab175b">
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/4a4727cb-7b06-4c25-a609-ef74737697ce">

## -Create a ServiceAccount and a RoleBinding for jenkins credintials
note : I gave Jenkins the Admin Role to get the full access over the my project on oc.
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/227a00c4-1ecd-4c6d-81a8-784b463ef982">

Create a secret file to store the ServiceAccess Token
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/54746725-b63a-4786-8558-0d67a6b09dd7">

View the token using the next command:
```
oc get sa/jenkins-sa -o json
```
copy the output to the oc login credentials

### -Build your pipeline:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0ad4df77-58d3-4d10-b015-4a45a61fc494">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ab5fc928-1ea1-4b49-9c0d-9db20eaca455">

## -Test the depolyment in the cluster/project:
use the command
```
oc port-forward pod-name 5000:5000
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/9000d059-79eb-4fcb-ba83-befe8f555f24">
