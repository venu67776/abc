kubectl apply -f mysqldeployment.yml
kubectl apply -f mysql-service.yml
kubectl apply -f backenddeployment.yml
kubectl apply -f backend-service.yml
kubectl apply -f frontenddeployment.yml
kubectl apply -f frontend-service.yml
kubectl apply -f ingress-service.yml