#! /bin/bash
echo '# inventory' | tee inventory
cat terraform.tfstate | jq --raw-output '.resources[].instances[].attributes | select(.name != null) | select(.name|contains("docker")) | .ipv4_address' | tee -a inventory