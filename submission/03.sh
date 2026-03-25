# Create a SegWit address.
# Add funds to the address.
# Return only the Address
bitcoin-cli -regtest -rpcport=18332 loadwallet "btrustwallet" 2>/dev/null || true
ADDR=$(bitcoin-cli -regtest -rpcport=18332 -rpcwallet=btrustwallet getnewaddress "" bech32)

# mine to that address so getreceivedbyaddress(…,0) > 0
bitcoin-cli -regtest -rpcport=18332 -rpcwallet=btrustwallet generatetoaddress 101 "$ADDR" >/dev/null

echo "$ADDR"