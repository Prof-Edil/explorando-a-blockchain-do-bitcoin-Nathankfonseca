# Create a 1-of-4 P2SH multisig address from the public keys in the four inputs of this tx:
#   `37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517`
#!/bin/bash

transacao=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_253 -rpcp>

for i in $(seq 0 3);
do
pub1=$(echo "$transacao" | jq -r ".vin[$i].txinwitness[1]")
done

multi=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_253 -rpcpassw>

echo $multi | jq -r ".address"


