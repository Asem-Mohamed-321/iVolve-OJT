### - Install AWS CLI:
If you haven't already installed the AWS CLI, you can download and install it from this link:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

### - Configure AWS CLI:
Run 'aws configure' and provide your AWS Access Key ID, Secret Access Key, default region, and output format.

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/da9ee01d-61fa-43f5-b93d-ad2d73d1f989">


### - Create s3 bucket:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/32ffa4ed-6550-4e15-9190-3204bb395202">


### - Check the s3 buckets:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/d34d70ed-0185-4a71-b5b7-12c09f731c01">


### - Enable versioning:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/757b3027-f386-49ec-844b-6ad657940582">

### - Enable logging:
#### command used for configuring logging :
```
aws s3api put-bucket-logging --bucket your-bucket-name --bucket-logging-status "{\"LoggingEnabled\":{\"TargetBucket\":\"your-log-bucket-name\",\"TargetPrefix\":\"logs/\"}}"
```
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/90e06dbd-3d7d-4d37-b234-bb10070175e8">

### - Upload a picture to the bucket:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/73ab4053-2402-4b22-bf2f-fc9811087e65">
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/56a22743-6188-43f0-8c74-c294983ab7fb">


### - Download a picture from the bucket:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/343a8e68-410b-41f2-81c2-11964e7df837">



