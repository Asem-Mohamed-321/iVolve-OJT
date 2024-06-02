# Openshift Labs

### Lab7:
 Deploy Nginx with 3 replicas. Create service to expose Nginx deployment. Use port forwording to access Nginx service locally. 
 Update Nginx image to Apache. View deployment's rollout history.
  Roll back Nginx deployment to the previous image version and monitor pod status confirm successful rollback.

### Lab8:
 Make a comparison between Deplotment and Statefulset.
 Create a YAML file for MySQL statefulset configuration. Write a YAML file to define a service for the MySQL statefulset 

### Lab9:
 Deploy Nginx with 1 replica, Exec into the Nginx pod and create a file at /usr/share/nginx/html/hello.txt with the content "hello, this is [your name]", verify the file is served using " curl locallhost/hello.txt "
 Delete the Nginx poda and wait for the deployment to create a new pod then exec into the new pod and verify the file at /usr/share/nginx/html/hello.txt is no longer exist
 Create a Persistant Volume Claim (PVC). Modify the deployment to attach the PVC to the pod at /usr/share/nginx/html. Repeat the previous steps and Verify the file persists across pod deletion.
 Make a comparison between PV, PVC, and StorageClass
