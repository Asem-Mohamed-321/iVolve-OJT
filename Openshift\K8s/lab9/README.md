


### - Create the deployment file:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d7bd8246-16ff-4aaf-87f9-e00a4ea79937">

### - exec to the pod and create the hello.txt file:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d180f867-9306-4507-a477-5abc4de2a694">

### - Delete the pod and wait untill the deployment creat a new one and check the file in it:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/54ee0791-f317-448f-ac90-de30691fbfbf">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/0f05c655-3f16-4a18-ac9c-f6a6e61c9ead">

### - Now create a PVC and make the pod claim it:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ac689a6f-5bc2-42ba-8921-fdd625971ae5">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/8133749f-f43a-4653-983e-20de992e9786">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/21e1c207-cd21-4e0d-b6d4-303fbe3871f2">

### - Repeat the first three steps to verify the presistent volume:

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/e2595c3f-e863-4017-a233-a5a00e6ccdc0">

we notice that we managed to keep the data even after the pod got deleted
