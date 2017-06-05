#!/bin/bash
export GPU_MAX_ALLOC_PERCENT=100
#./ethdcrminer64 -mode 1 -epool us2.ethermine.org:4444 -ewal 0x27fb862bbf6c26225b3baaa79b003e4f1ea9031b.airbuntu1 -epsw x
#./ethdcrminer64 -gser 2 -epool exp-us.dwarfpool.com:8018 -ewal 0x254856971d2cf91bd7835660f2a2b7deafb037fe.airbuntu -epsw yfisso@gmail.com -allcoins exp
./ethdcrminer64 -epool exp-us.dwarfpool.com:8018 -ewal 0x254856971d2cf91bd7835660f2a2b7deafb037fe -eworker airbuntu -epsw yfisso@gmail.com -allcoins exp
