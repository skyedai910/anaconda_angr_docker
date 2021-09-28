#!/bin/bash
sleep 1
cd ~
jupyter lab --ip='*' --port=8888 --no-browser --allow-root
trap : TERM INT; sleep infinity & wait