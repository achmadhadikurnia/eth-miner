#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=asia1.ethermine.org:4444
WALLET=0x614800397a8f503cc157ec9b8f81356fa74e3af6.lol
#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lol --algo ETHASH --pool $POOL --user $WALLET $@ --4g-alloc-size 4076
