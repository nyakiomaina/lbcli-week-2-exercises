# Create a wallet with the name "btrustwallet".
bitcoin-cli -regtest -rpcport=18332 createwallet "btrustwallet" 2>/dev/null || true
echo "btrustwallet"