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

[compose-up-cmd](https://app.screencast.com/r345N14GQCaXf)

This cmd will up the container. We can check it from docker desktop too. 
[docker-desktop-view](https://app.screencast.com/vacI3txKFz3j2)

We can check it from browser now by accessing the url.
http://localhost:5000 where the service is running.

[web-server](https://app.screencast.com/6n3j8AbEjQf9B)

Now, to run these containers in container orchestration tool im using kubernetes and provisioning using minikube. 
To start minikube, 
- minikube start
 It will start in local. 

[minikube-start](https://app.screencast.com/7BYEKHWwi01qw)

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

[kubectl get pods](https://app.screencast.com/JPElqqZ769nWr)
[kubectl get services](https://app.screencast.com/kJxoWwhlZRAxy)

We can check it using kubernetes dashboard too by running
- minikube dashboard
[minikube dashboard](https://app.screencast.com/HA4nGhd1gNAfH)
[dashboard-kube](https://app.screencast.com/XQXo0uvnlVhma)

As i have configured with 3 replica set when deploying app so we can view 9 services for each 3 pods active;
- kubectl get services
- kubectl get pods
[replica-created](https://app.screencast.com/oJUsjAlqGGvjm)

Finally, we can see the service is running [Hello-from-the-web-server](https://app.screencast.com/Xqz4YoB8HkgKk)
and also we can check it from browser too [browser](https://app.screencast.com/q9QNjdmOE7wBD)

**_Note:_** I have also added github ci/cd too
