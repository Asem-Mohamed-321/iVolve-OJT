### - Create VPC with a suitale CIDR:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d3030454-c2c2-466e-be19-aae2b9ab3ba8">

### - Create 2 subnets in different Availablity Zones to ensure availability:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2ba1ae3c-1de8-460a-b9f6-ac4b2d0c9e8c">

### - Create an internet gateway:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/7d87a09a-2a3a-4bdd-a80e-63eda275ab18">

### - Create route table and make sure to attach it to the subnets:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a4b808b6-ff1f-4ca0-8946-e33533a14ce4">

### - Create Security group to allow HTTP/HTTPS:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/656c08ab-b17b-4738-ba36-c31fee210922">

### - Create the EC2 instance with userdata to install the web application:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/613b9ed9-9fbe-4df6-b1dc-58276cd8e987">

### - Create target groups for the load balancer:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/7ea814f6-b3b3-4b30-9f8d-62beddb0e814">


### - Create Load balancer and attach it to the target group:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/259cf8a3-7ccd-42f6-9286-def00e3fbc66">


### - test the Load balancer by refreshing the page:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/95f8d9c7-b4c8-4ec0-828e-33451682e68a">
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/6faa39e3-1ce7-4ec8-ac6c-a3a77973b71c">

### As we can see the load balancer balances the traffic between the two instancesto ensure availability and sustainability



