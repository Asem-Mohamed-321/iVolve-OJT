# Task:
- Createa BuildConfig in OpenShift to build the HTML application using the Nginx builder image.
- Start the build process for the BuildConfig.
- View the build logs and monitor the progress.
- Once the build is complete, expose the service and access the website.

# Steps:
## -Use the command "oc new-app" to create the new application:
```
oc new-app imgstream~repo-url
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/83d8e01c-1283-4520-a453-7eb8a5039ab8">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/5b8801b4-48e2-4a00-9de5-36d8cfb998e0">

## -View the build logs
using the next command you can view the log of your build 
```
oc logs bc/buildcongigname 
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/026d19c8-accb-44fa-b10b-9214b31fec49">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/8b4f20a5-ee9c-40f0-b236-fce1de9dd074">

## -Expose the service and test the website
use the following commands to get the route url
```
oc get svc
oc expose svc/service-name
oc get route
```
and then copy the url and test it on your browser

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/fa88b33f-6ad9-40af-aa68-5f4803d91fab">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0e9bc0f8-2d75-433f-9520-12106426e96d">
