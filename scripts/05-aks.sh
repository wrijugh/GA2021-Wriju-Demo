aksname=wgaks

az aks create -n $aksname -g $g --node-count=2 -a kube-dashboard --generate-ssh-keys

az aks get-credentials -g $g -n $aksname

#Copy the config to the home

dashboard
az aks browse -g $g -n $aksname

kubectl delete clusterrolebinding kubernetes-dashboard
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard --user=clusterUser

alias k=kubectl
k create deploy web --image=nginx --replicas=3

k expose deploy web --port=80 --type=LoadBalancer

k create deploy web --image=wrijughosh/gabweb2021:latest --replicas=3