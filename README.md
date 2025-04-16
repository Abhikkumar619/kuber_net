# kuber_net
This is mini K8 project built for learning purpose. 

- Build the ap.py and test in local 
- start docker-desktop
- Prepare docker file in the project. 

```bash
# Create the Docker image and text it. 
docker build -t name_of_image: latest .

docker images

docker run -p 5000:5000 image_name: latest


# Starting minikube in docker. 
 minikube start --driver=docker

minikube status

kubectl get all -A

kubectl get pods -A

kubectl get nodes -A

minikube image list


```
