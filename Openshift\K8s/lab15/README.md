# What is a DemonSet
A DaemonSet can be used to ensure that all eligible nodes run a copy of a Pod. The DaemonSet controller creates a Pod for each eligible node and adds the spec. affinity. nodeAffinity field of the Pod to match the target host. A DaemonSet defines Pods that provide node-local facilities. These might be fundamental to the operation of your cluster, such as a networking helper tool, or be part of an add-on.

### - Create the demonset yaml file:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/fd44ccbb-6a68-4b0f-884c-c2ac668d6e3f">

```
kubectl apply -f demonset.yml
```
check that pod is deployed
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/eb3a74eb-bae0-4251-a526-bf466cf3f370">

### - taint the minikube node with your value:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/cf2a4d32-ecf0-46fd-9c72-a244a8e411f8">

### - Creat pod yaml file with the wrong tolarent and check its status:
<imgi src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/ac7db233-a960-488a-b185-4df0a7c1ffc5">
  
note the pod stays in pending state and never goes in the running state
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/55a80ee2-0863-4003-ab4b-608a1ea1a807">


### - Edit the taolerant value in the pod file to match the taint on the node and ckeck its status:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/85630dcf-51fc-4e32-a60d-98fbe7c9ac8d">

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/9e6bf244-89a4-4e14-9327-1e269c04c1a2">


# Comparison between Taint and Tolarent and Node Affinity
## -Taints and Tolerations:

**Taints**: Taints are applied to nodes to repel or repulse pods from being scheduled onto those nodes. They are used to mark nodes with certain attributes that should be avoided by certain pods.

**Tolerations**: Tolerations are attributes specified by pods that allow them to tolerate (or ignore) the effects of taints on nodes. Pods with matching tolerations can still be scheduled onto nodes with corresponding taints.

**Use Case**: Taints and tolerations are typically used for scenarios where you have specific requirements about which nodes can or cannot run certain pods. For example, you might want to ensure that only pods with certain tolerations are scheduled on nodes with specialized hardware or specific configurations.

## -Node Affinity:

**Node Affinity**: Node affinity is a feature that allows you to constrain which nodes your pod is eligible to be scheduled on based on node labels. You can specify node affinity rules that indicate the node characteristics required by your pod.

**Use Case**: Node affinity is useful when you want to schedule pods onto nodes with specific attributes, such as nodes with SSD storage, nodes in a certain geographical location, or nodes with specific hardware capabilities.
