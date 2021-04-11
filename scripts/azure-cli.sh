# Login to Azure
#az login 

# Variables
g=rg-azbootcamp2021;l=eastus

# Create Resource Group
az group create -n $g -l $l

# Create a Cheapest VM for Dev
n="vm-ubuntu"
admin="wriju"
passwd="Gabc2021!@#$"
vmname="ubuntu-dev"
size="Standard_DS2_v2"
# Use Unmanaged Disks, Locally redundant storage
az vm create -n $vmname -g $g --admin-username $admin --admin-password $passwd --authentication-type password --os-disk-size-gb 200 --image ubuntults --size $size --use-unmanaged-disk --storage-sku Standard_LRS

# add auto shutdown to save cost
az vm aut
# Get the Public Ip of the VM to connect to 
echo "copy the SSH:"
echo "ssh "$admin"@"$(az vm show -d -n $vmname -g $g --query "publicIps" -o tsv)

#==========================
# Inside the VM
#==========================
# Install snapd
sudo apt update && sudo apt install snapd

# Install dotnet Core
wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update 
sudo apt-get install -y apt-transport-https 
sudo apt-get update && sudo apt-get install -y dotnet-sdk-5.0
# OR 
sudo snap install dotnet-sdk --classic

# Install Kubectl
sudo snap install kubectl --classic

# Install Azure CLI
sudo snap install azure-cli --candidate

# Install Docker
sudo snap install docker

sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

# Done setting up the VM