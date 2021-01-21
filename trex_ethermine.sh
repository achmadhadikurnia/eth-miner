# IDENTITY
WALLET=0x614800397a8f503cc157ec9b8f81356fa74e3af6
ENGINE_NAME=TREX_WaterSprings_
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
RIG_NAME=$ENGINE_NAME.$UUID
USERNAME=$WALLET.$RIG_NAME

# POOL
POOL=asia1.ethermine.org:4444
POOL2=eu1.ethermine.org:4444
POOL3=us1.ethermine.org:4444
POOL4=us2.ethermine.org:4444

# SCHEME
SCHEME=stratum+tcp

# SCRIPT
./trex -a ethash -o $SCHEME://$POOL -u $WALLET -p x -w $RIG_NAME
./trex -a ethash -o $SCHEME://$POOL2 -u $WALLET -p x -w $RIG_NAME
./trex -a ethash -o $SCHEME://$POOL3 -u $WALLET -p x -w $RIG_NAME
./trex -a ethash -o $SCHEME://$POOL4 -u $WALLET -p x -w $RIG_NAME