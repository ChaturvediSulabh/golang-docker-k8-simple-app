# Hello World Web-App in Go, Containerized Workload and Deployed in K8 (Minikube) cluster

1. A simple Go HTTP server, responding back with "Hello, World !". 
2. Dockerfile, push image to DockerHub
3. Deploy to Local Minikube CLuster or any other K8 cluster (it's the same way)

#### Pre-requisites - Do this first if not done already
1. [Install Golang](https://golang.org/doc/install)
2. [Install Docker and Daemon (CRT)](https://docs.docker.com/install/)
3. [Create an account on Docker Hub](https://hub.docker.com)
4. [minikube is installed and running](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-minikube)
5. [kubectl is installed and running](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl)

#### How do I test ?
1. Clone this repo or zip download it
2. cd go-docker-k8-simple-app
3. kubectl appy -f deployment.yml
4. kubectl port-forward pod/< POD > < your-port >:8080
    ##### Example: 
    kubectl port-forward pod/hello-world-78d5c6c7fb-zlvwx 9999:8080
  ```
    curl -v localhost:9999                                        
    * Rebuilt URL to: localhost:9999/
    *   Trying ::1...
    * TCP_NODELAY set
    * Connected to localhost (::1) port 9999 (#0)
    > GET / HTTP/1.1
    > Host: localhost:9999
    > User-Agent: curl/7.54.0
    > Accept: */*
    >
    < HTTP/1.1 200 OK
    < Date: Fri, 01 Mar 2019 17:14:29 GMT
    < Content-Length: 14
    < Content-Type: text/plain; charset=utf-8
    <
    Hello, World!
    * Connection #0 to host localhost left intact
  ```

