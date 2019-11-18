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

## delete
- `terraform destroy`
