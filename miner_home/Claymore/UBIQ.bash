#!/bin/bash
export GPU_MAX_ALLOC_PERCENT=100
#./ethdcrminer64 -gser 2 -epool stratum+tcp://us.ubiqpool.io:8008 -ewal 0x2a6d7f678ef26d4dd120c796b24e550118939854 -epsw x -eworker airbuntu -allcoins 1
./ethdcrminer64 -epool stratum+tcp://us.ubiqpool.io:8008 -ewal 0x2a6d7f678ef26d4dd120c796b24e550118939854 -epsw x -eworker airbuntu -allcoins 1
