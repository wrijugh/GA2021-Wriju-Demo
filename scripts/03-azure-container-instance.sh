aciname=wg-acigab2021

az container create -n $aciname -g $g --image wrijughosh/gabweb2021:latest --ports 80 --dns-name-label contoso

az container create -n $aciname"2" -g $g --image wgacrgab2021.azurecr.io/gabweb2021:latest --ports 80 --dns-name-label contoso2 