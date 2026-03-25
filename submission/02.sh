bitcoin-cli -regtest loadwallet "btrustwallet" 2>/dev/null || true
bitcoin-cli -regtest -rpcport=18332 -rpcwallet=btrustwallet getrawchangeaddress bech32