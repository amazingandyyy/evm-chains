#!/usr/bin/env bash

set -ex

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
DOCSPATH=$SCRIPTPATH/../docs
RAWDATAPATH=$SCRIPTPATH/../rawdata

rm -rf $DOCSPATH/*

jq -s 'flatten' $RAWDATAPATH/ethereum-lists/chains/*.json > $DOCSPATH/ethereum-lists-chains.json
