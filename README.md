# dockerhetzner
creates a server in the hetzner cloud and installs docker and docker-compose

## prerequisites
- `cp terraform.tfvars.dist terraform.tfvars`
- set values
- install terraform and ansible

## install
- `terraform init`
- `bash ./create`

## test
- ``myip=`cat terraform.tfstate | jq --raw-output '.resources[].instances[].attributes | select(.name != null) | select(.name|contains("docker")) | .ipv4_address'` ``
- `ssh root@${myip}`
- `ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no root@${myip}`

## delete
- `terraform destroy`


## create multiple server
`git clone git@github.com:jorzekowsky/dockerhetzner.git NAME`