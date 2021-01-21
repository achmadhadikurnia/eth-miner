# IDENTITY
WALLET=0x614800397a8f503cc157ec9b8f81356fa74e3af6
ENGINE_NAME=B_WaterSprings_
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
RIG_NAME=$ENGINE_NAME.$UUID
USERNAME=$WALLET.$RIG_NAME

# POOL
POOL=asia1.ethermine.org:4444
POOL2=eu1.ethermine.org:4444
POOL3=us1.ethermine.org:4444
POOL4=us2.ethermine.org:4444

# SCHEME
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethproxy

# SCRIPT
./b/bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME@$POOL2 -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME@$POOL3 -api 127.0.0.1:1880
./b/bminer -uri $SCHEME://$USERNAME@$POOL4 -api 127.0.0.1:1880
