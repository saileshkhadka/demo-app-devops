# demo-app-devops

# Develop an Infrastructure as Code solution for deploying a scalable web application stack consisting of containerized components:

1. **_Web Server:_** Containerized Any HTTP Server (eg. node.js)
2. **_Database Server:_** Containerized MySQL or any NoSQL
3. **_Application Server:_** Containerized lightweight Python or Node.js application

Here, i created one demo-app web-server, db-server and app-server with some basic codes.
And, dockerize every services in dockerfile.

then, create one docker-compose file which will handle the multi-container applications.

now run the cmd, 
- docker-compose up -d 

![copmose-up-cmd](image-1.png)

This cmd will up the container. We can check it from docker desktop too. 
![docker-desktop-view](image-2.png)

We can check it from browser now by accessing the url.
http://localhost:5000 where the service is running.

![web-server](image-3.png)

Now, to run these containers in container orchestration tool im using kubernetes and provisioning using minikube. 
To start minikube, 
- minikube start
 It will start in local. 

![minikube-start](image-4.png)

Now we have to write kubernetes manifest and service file to deploy our application inside multiple pods with proper considerations.
So, i created deployments file - app-server-deployment.yml, db-server-deployment.yml and web-server-deployment.yml 
and for services, i created - app-server-services.yml, db-server-services.yml, web-server-services.yml with **_LoadBalancer_** type because we need to ensure the scalability.

now, apply the kubernetes manifest and service file for all 3 services,
- kubectl apply -f app-server-deployment.yml
- kubectl apply -f app-server-services.yml

- kubectl apply -f db-server-deployment.yaml
- kubectl apply -f db-server-services.yml

- kubectl apply -f web-server-deployment.yaml
- kubectl apply -f web-server-services.yml

![kubectl get pods](image-6.png)
![kubectl get services](image-7.png)

We can check it using kubernetes dashboard too by running
- minikube dashboard
![minikube dashboard](image-8.png)
![dashboard-kube](image-11.png)

As i have configured with 3 replica set when deploying app so we can view 9 services for each 3 pods active;
- kubectl get services
- kubectl get pods
![replica-created](image-9.png)

Finally, we can see the service is running ![Hello-from-the-web-server](image-10.png)
and also we can check it from browser too ![browser](image-12.png)



