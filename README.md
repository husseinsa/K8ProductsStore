PS C:\multi-container-app\k8> kubectl get pods
NAME                                  READY     STATUS    RESTARTS   AGE
backend-deployment-69b94899bf-7mp2r   1/1       Running   0          51s



npm run checkup
app folder -> Client Coverage


 mongo_seed:
    image: mongo-seed
    build:
      context: db-seed