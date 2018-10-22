#!/bin/bash
sudo sipp -i 10.1.11.201 -p 8834 -sf scenario.xml -l 30 -m 100 -r 1 -s 1235 10.1.11.200:5080
