# IDENTITY
WALLET=0x614800397a8f503cc157ec9b8f81356fa74e3af6
ENGINE_NAME=LOL_WaterSprings_
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
RIG_NAME=$ENGINE_NAME$UUID
USERNAME=$WALLET.$RIG_NAME

# POOL
POOL=asia1.ethermine.org:4444
POOL2=eu1.ethermine.org:4444
POOL3=us1.ethermine.org:4444
POOL4=us2.ethermine.org:4444
POOL5=asia1.ethermine.org:14444
POOL6=eu1.ethermine.org:14444
POOL7=us1.ethermine.org:14444
POOL8=us2.ethermine.org:14444
POOL9=asia1.ethermine.org:5555
POOL10=eu1.ethermine.org:5555
POOL11=us1.ethermine.org:5555
POOL12=us2.ethermine.org:5555

# SCHEME
SCHEME=stratum1+tcp
SCHEME2=stratum1+ssl

# SCRIPT
./mine -G -U -P $SCHEME://$WALLET@$POOL
./mine -G -U -P $SCHEME://$WALLET@$POOL2
./mine -G -U -P $SCHEME://$WALLET@$POOL3
./mine -G -U -P $SCHEME://$WALLET@$POOL4
./mine -G -U -P $SCHEME://$WALLET@$POOL5
./mine -G -U -P $SCHEME://$WALLET@$POOL6
./mine -G -U -P $SCHEME://$WALLET@$POOL7
./mine -G -U -P $SCHEME://$WALLET@$POOL8
./mine -G -U -P $SCHEME2://$WALLET@$POOL9
./mine -G -U -P $SCHEME2://$WALLET@$POOL10
./mine -G -U -P $SCHEME2://$WALLET@$POOL11
./mine -G -U -P $SCHEME2://$WALLET@$POOL12