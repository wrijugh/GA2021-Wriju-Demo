# Connect the local VS Code with the VM

pwd
mkdir gabc2021
cd gabc2021

git clone https://github.com/wrijugh/AzureGlobalBootcamp2021-Wriju-Demo
mkdir sample 
cd sample 

# Create a ASP.net core Application MVC
dotnet new mvc -n azweb2021 --no-https
cd azweb2021
#Build
dotnet build

