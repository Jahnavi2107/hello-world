Prerequisites
Step 1 :Install Python 
Step 2 :Install pip  after installing the Pip check the version using the below command

 pip --version 

 Step 3  :Install Docker and Git 
 step 4  : Create a Git repository using below command

 git init 

CREATING THE MICROSERVICES

 step 5 :  Create the New directory for the Hello Service Using the Flask

 Step 6 :  Create a virtual environment and install Flask

python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install flask

Step 7 : Create the application file app.py

Step 8 : Build and run the Hello Service locally

Run the application by giving  command -- python app.py 

Step 9 : Create the New directory for the World Service 
Step 10 : Build and run the World Service locally

Containerizing the Microservices with Docker

Step 11 : Create the Docker Files for the Hello Service and the World Service 

Step 12 : Creating the Docker Images for the Hello Service

docker build -t hello-service -f hello-service/Dockerfile hello-service/ 

Step 13 : Creating the Docker Images for the World Service

docker build -t hello-service -f hello-service/Dockerfile world-service/ 

Step 14 : Run the Hello Service 

docker run -d -p 5000:5000 hello-service

Step 15 : Run the World Service

docker run -d -p 5001:5001 world-service

Deploying the Application on Kubernetes

Step 16 : Install and start Minikube:

minikube start 

Step 17 : Creating the kurenet manifest files 

Step 18 : Apply the manifests to your Kubernetes cluster

kubectl apply -f hello-service-deployment.yaml
kubectl apply -f hello-service-service.yaml
kubectl apply -f world-service-deployment.yaml
kubectl apply -f world-service-service.yaml

Testing and Integration

Step 19 : Test individual services   are working or not

curl http://localhost:5000/hello

curl http://localhost:5001/world







