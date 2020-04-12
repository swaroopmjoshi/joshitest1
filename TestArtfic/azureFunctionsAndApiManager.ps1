# make sure all shared envs and resources are in same rg, while independent env in its own rg
param(
    [Parameter(Mandatory=$true)]
    [string]$rg,
    [Parameter()]
    [string]$location = 'australiaeast'
)

az group create -n $rg -l $location

az group deployment create -g $rg --template-file azuredeploy.json --parameters azuredeploy.parameters.json