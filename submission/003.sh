#!/bin/bash
# How many new outputs were created by block 123,456?
bitcoin-cli -rpcconnect=84.247.182.145 -rpcuser=user_253 -rpcpassword=eRHxrWVSaWHw getblockstats 123456 '["outs"]'

