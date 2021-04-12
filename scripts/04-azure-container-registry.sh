acrname=wgacrgab2021

az acr create -n $acrname -g $g --sku Standard --admin-enabled 

# Login 
docker login wgacrgab2021.azurecr.io -u wgacrgab2021

docker tag wrijughosh/gabweb2021:latest wgacrgab2021.azurecr.io/gabweb2021:latest

docker push wgacrgab2021.azurecr.io/gabweb2021:latest