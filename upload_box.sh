#!/bin/bash
rsync -av -e 'ssh -p 2010' output/*.box sklein@santa-maria.stephane-klein.info://home/sklein/download/vagrant-boxes/
