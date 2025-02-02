# Create a 1-of-4 P2SH multisig address from the public keys in the four inputs of this tx:
#   `37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517`

#!/bin/bash

transacao=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_253 -rpcpassword=eRHxrWVSaWHw getrawtransaction 37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517 1)

pub1=$(echo "$transacao" | jq -r ".vin[0].txinwitness[1]")
pub2=$(echo "$transacao" | jq -r ".vin[1].txinwitness[1]")
pub3=$(echo "$transacao" | jq -r ".vin[2].txinwitness[1]")
pub4=$(echo "$transacao" | jq -r ".vin[3].txinwitness[1]")

multi=$(bitcoin-cli -rpcconnect=84.247.182.145:8332 -rpcuser=user_253 -rpcpassword=eRHxrWVSaWHw createmultisig 1 "[\"$pub1\",\"$pub2\",\"$pub3\",\"$pub4\"]")

echo $multi | jq -r ".address"


