# movella_assessment

### Components Used:
- docker
- helm
- Minikube
- Docker Hub Registry

### Step to install:

1. Make sure Cluster and Helm util is ready.
2. Create a docker serect object in K8S to pull private images.
    
    ```kubectl create secret docker-registry movella --docker-server=<your-registry-server> --docker-username=<your-name> --docker-password=<your-pword> --docker-email=<your-email>```
4. Modify the helm values file and add the docker image pull secret name.
5. Install the helm chart. Using 

    ``` helm install absnginx abs-guide/ -n default```