#!/bin/bash

export CORE_PEER_ID=peer0.org1.example.com
export CORE_PEER_ADDRESS=peer0.org1.example.com:7051
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_CERT_FILE=/etc/hyperledger/fabric/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/etc/hyperledger/fabric/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt

peer node start
