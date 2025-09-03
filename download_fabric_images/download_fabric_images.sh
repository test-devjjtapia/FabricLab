#!/bin/bash

# Script para descargar imágenes de Hyperledger Fabric usando Podman
# Compatible con Fedora 42 y homelabs sin Docker

FABRIC_VERSION=2.5
CA_VERSION=1.5
COUCHDB_VERSION=3.2

echo "📦 Descargando imágenes de Hyperledger Fabric con Podman..."

# Lista de imágenes a descargar
images=(
  "hyperledger/fabric-peer:${FABRIC_VERSION}"
  "hyperledger/fabric-orderer:${FABRIC_VERSION}"
  "hyperledger/fabric-tools:${FABRIC_VERSION}"
  "hyperledger/fabric-ca:${CA_VERSION}"
  "couchdb:${COUCHDB_VERSION}"
)

# Descargar imágenes
for image in "${images[@]}"; do
  echo "➡️  Descargando $image"
  podman pull docker.io/$image
done

echo "✅ Imágenes descargadas exitosamente:"
podman images | grep -E 'fabric|couchdb'
