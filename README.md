# AKS-Learning

AKS-Learning is a repository to share the source code I used in my AKS practices. 

### PowerShell REST API

```PowerShell
PS C:\Projects\AKS-Learning\Docker\PowerShell\RESTAPI-EMPLOYEE> docker build -t chenv/ps-employee-rest-api:v1.0.0 .
```

```PowerShell
PS C:\Projects\AKS-Learning\Docker\PowerShell\RESTAPI-EMPLOYEE> docker push chenv/ps-employee-rest-api:v1.0.0
```

### Node.js

```PowerShell
PS C:\Projects\AKS-Learning\Docker\PowerShell\RESTAPI-EMPLOYEE> docker build -t chenv/nodejs-app:v1.0.0 .
```

```PowerShell
PS C:\Projects\AKS-Learning\Docker\PowerShell\RESTAPI-EMPLOYEE> docker push chenv/nodejs-app:v1.0.0
```

### Create Pod

```PowerShell
C:\Projects\AKS-Learning> kubectl apply -f .\Kubernetes\manifests\Create-Pod.yaml
```

### Create Deployment

```PowerShell
C:\Projects\AKS-Learning> kubectl apply -f .\Kubernetes\manifests\Create-Deployment.yaml
```

### Create Service

```PowerShell
C:\Projects\AKS-Learning> kubectl apply -f .\Kubernetes\manifests\Create-Service.yaml
```

### Docker Images

> [My Docker Hub](https://hub.docker.com/u/chenv)

1. chenv/ps-employee-rest-api:v1.0.0
2. chenv/nodejs-app:v1.0.0
3. chenv/nginx-app:v1.0.0