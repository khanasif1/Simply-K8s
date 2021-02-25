kubectl get ns -o wide
kubectl config view
kubectl config set-context --current --namespace=nspod 

kubectl get all -o wide
kubectl get pod -o wide
kubectl get service  -o wide
kubectl get deployment  -o wide

kubectl describe pod nginxcontroller 

kubectl get ns nspod -o yaml

kubectl apply -f .\namespace.yaml
kubectl apply -f .\pod.yaml
kubectl apply -f .\deployment.yaml --namespace nspod

kubectl delete  ns nspod -f .\namespace.yaml 
kubectl delete  -f  .\deployment.yaml

kubectl run nginximg --image=nginx

kubectl exec -it nginxcontroller curl GET http://localhost
kubectl exec -it nginximg curl GET http://localhost

kubect get label

kubectl logs helloworldapp-66556bbc89-pbjrz 