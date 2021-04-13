# Azure Global Bootcamp 2021 - India

## ASP.NET Web Developer's Journey to Cloud

*Demo by Wriju Ghosh [@wrijugh](https://twitter.com/wrijugh)*

**Github Page ** https://wrijugh.github.io/GA2021-Wriju-Demo/

This repository is made for the demo I have prepared for the Azure Global Bootcamp 2021 India chapter.

This is divided into few sections

- Making the development machine in Azure
- Installing runtime and tools
  - Dotnet Core 3.1
  - Docker CE
  - Kubectl
- Installing Visual Studio Code extensions and Connecting it remotely.
- Building first ASP.NET Application and running it locally.
- Containerzing the ASP.NET Core Application.
- Testing the containerized ASP.NET Core Application locally.
- Moving this container image to Docker Registry (Docker hub).
- Push the image to ACR
- Run the container in ACI
- Deploying the container to Azure Kubernetes Service


## 01-Making the dev VM

Create a cheapest Azure Ubuntu VM for development and install the tools and runtime.

<iframe width="560" height="315" src="https://www.youtube.com/embed/D7K3ySYzFs4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[https://youtu.be/D7K3ySYzFs4](https://youtu.be/D7K3ySYzFs4)

## 02-Connecting to the VS Code to build and containerize ASP.NET Apps

Because the Ubuntu VM is a headless server, we will not be able to install Visual Studio Code. But we can connect remotely using [Remote SSH](https://code.visualstudio.com/docs/remote/ssh) extension.

<iframe width="560" height="315" src="https://www.youtube.com/embed/KR9cPYHWB0A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[https://youtu.be/KR9cPYHWB0A](https://youtu.be/KR9cPYHWB0A)

## 03-Pushing the container image to ACR and running it in ACI

Push the container to Azure Container Registry and host the container in Azure Container Instance.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EPF_R7DX4do" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[https://youtu.be/EPF_R7DX4do](https://youtu.be/EPF_R7DX4do)

## 04-Deploying it to Azure Kubernetes Service (AKS)

<iframe width="560" height="315" src="https://www.youtube.com/embed/uKdTGu_ENSc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[https://youtu.be/uKdTGu_ENSc](https://youtu.be/uKdTGu_ENSc)

