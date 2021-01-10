#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0x614800397a8f503cc157ec9b8f81356fa74e3af6

UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

USERNAME=$ADDRESS.B_WaterSprings_
POOL=eu1.ethermine.org:4444
POOL2=eu2.ethermine.org:4444
POOL3=us1.ethermine.org:4444
POOL4=us2.ethermine.org:4444

# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethproxy

./b/bminer -uri $SCHEME://$USERNAME$UUID@$POOL -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME$UUID@$POOL2 -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME$UUID@$POOL3 -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME$UUID@$POOL4 -api 127.0.0.1:1880
