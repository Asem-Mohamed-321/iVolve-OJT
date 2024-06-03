### -  Create a ServiceAccount:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/a263dee6-8ece-4d6d-a630-f8d2ea46956c">

```
kubectl apply -f serviceaccount.yml
```

### - Define a Role allowing read-only access to pods in the namespace:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/2cc2fe4f-5a63-4532-993f-042c1dfce58e">

```
kubectl apply -f Role.yml
```

### - Use RoleBinding resource to bind the Role to the ServiceAccount:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/21c80f9e-d6e2-4046-a4a3-b1bacbcd6f81">

```
kubectl apply -f rolebinding.yml
```

### - To get the ServiceAccount token we must have a secret file:
<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/5a6fff45-038c-4e2b-9662-26e8583dd7a9">

```
kubectl apply -f secret.yml
```

<img src="https://github.com/Asem-Mohamed-321/iVolve-OJT/assets/167926594/e06af677-3931-4772-b484-f5dcb31e2891">


## Comparison: Role & RoleBinding vs. ClusterRole & ClusterRoleBinding
### Role and RoleBinding
#### Scope: Roles and RoleBindings are namespace-scoped. They only grant permissions within a specific namespace.
#### Usage: Used to define and bind permissions within a single namespace.
#### Role: Defines a set of permissions (e.g., read-only access to pods) within a namespace.
#### RoleBinding: Associates a Role with a user, group, or ServiceAccount within a namespace.
### ClusterRole and ClusterRoleBinding
#### Scope: ClusterRoles and ClusterRoleBindings are cluster-scoped. They can grant permissions across all namespaces or cluster-wide resources.
#### Usage: Used to define and bind permissions that are needed cluster-wide or across multiple namespaces.
#### ClusterRole: Defines a set of permissions that can be applied across the entire cluster (e.g., read-only access to pods in all namespaces).
#### ClusterRoleBinding: Associates a ClusterRole with a user, group, or ServiceAccount at the cluster level.
