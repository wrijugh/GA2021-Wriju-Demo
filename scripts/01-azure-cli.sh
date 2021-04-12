# Login to Azure
#az login 

# Variables
g=rg-azbootcamp20212;l=eastus;
n=vm-ubuntu;admin=wriju;passwd='Gabc2021!@#$';vmname=ubuntu-dev;size=Standard_DS2_v2

# Create Resource Group
az group create -n $g -l $l

# Create a Cheapest VM for Dev

# Use Unmanaged Disks, Locally redundant storage
az vm create -n $vmname -g $g --admin-username $admin --admin-password $passwd --authentication-type password --os-disk-size-gb 200 --image ubuntults --size $size --use-unmanaged-disk --storage-sku Standard_LRS

# add auto shutdown to save cost
az vm auto-shutdown -n $vmname -g $g --time 1700

# Get the Public Ip of the VM to connect to 
echo "Copy the SSH:"
echo "ssh "$admin"@"$(az vm show -d -n $vmname -g $g --query "publicIps" -o tsv)

#==========================
# Inside the VM
#==========================
# Install snapd
sudo apt update && sudo apt install snapd

# Install dotnet Core 3.1*
sudo snap install dotnet-sdk --classic --channel=3.1

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

# ----------------Done setting up the VM