### - Create a new node and configure it as the slave node:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6078a59e-7c41-4d70-9641-54508a29ed71">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2f06bf7c-d8c7-44fa-82ec-4188cc8914a6">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ae647b27-b5cb-4de4-bd67-cdaa0fffe1c6">

### - Set the required credintials:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/72a9340e-4823-4502-8938-61fc5bdbe688">

### - test the connection between the master and the slave and configure the host in the known hosts file:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/fcdd4a68-f235-456f-b3ae-d70a55939fe0">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d08cb54a-caac-479d-ae9b-b501f1990399">

download openjdk, dockcer and oc-cli
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2140ac97-bf01-4d91-8a2e-9e535a3529cf">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d44e6ff5-b531-4c35-954c-3dad18fdf201">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/387e1389-c98f-4da1-965f-d6faea798aee">

check the node log to confirm that it is connected 
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/7fecf0ef-dfae-4465-82e7-6bed29e8d641">

### - Configure your global shared library repo:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/263fb9af-424c-47c2-b880-a17d6633525d">

shared library link: "https://github.com/Asem-Mohamed-321/shared-library"

### - Create a pipeline and configure the source code repo:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0d77bbf9-4309-4edd-b65b-23a790977dfa">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2fc6cf53-d69e-45b0-9e96-0480eeb3bc63">

### - Write your shared library and your Jenkinsfile:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0ca83e8e-bad4-4e5e-bb0c-dfa9234ae813">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/f8c504cf-1529-4d4a-8523-62a24070ea47">

### - Create a ServiceAccount and RoleBindings yaml files:
note : I gave Jenkins the Admin Role to get the full access over the my project on oc.

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/e119a6b1-0262-4b3f-8b01-074c3ec510d6">

Create a secret file to store the ServiceAccess Token

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/c20bccf1-c494-4266-82e1-14be12cd5075">

View the token using the next command:
```
oc get sa/jenkins-sa -o json
```
copy the output to the oc login credentials 

### - Write your deployment and service yaml files:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/52ce4a98-a6a8-41ff-a13d-95e0b0fbeee0">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/b2b54f72-8eb0-48da-abd1-51865f42e61e">

link for the full app repo : "https://github.com/Asem-Mohamed-321/ivolve-jenkins"

### - Build your pipeline:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a736fada-88ec-41e6-ad09-be055272a75d">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/581de46a-8202-4ce0-9cd6-60cd8ebfbc89">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ae555fdc-2509-4526-8af5-46dc8eb2812d">

### - Test the depolyment in the cluster/project:
use the command 
```
oc port-forward pod-name 8090:8081
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/3b562dd1-5c05-4719-8945-b2e3d42a3df9">

