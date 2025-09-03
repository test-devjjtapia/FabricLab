# Hyperledger Fabric Peer con Podman en Fedora 42

Este proyecto contiene la estructura base para ejecutar un peer de Hyperledger Fabric en un contenedor Podman en Fedora 42 Workstation.

## Estructura

- `docker/podman-peer.Dockerfile`: Dockerfile para construir la imagen del peer.
- `scripts/start-peer.sh`: Script de inicio que lanza el peer node.
- `crypto/`: Carpeta vacía para tus certificados MSP y TLS.
- `config/`: Carpeta vacía para archivos `core.yaml`, `configtx.yaml`, etc.

## Instrucciones

### 1. Construir la imagen
```bash
podman build -t fabric-peer -f docker/podman-peer.Dockerfile .
```

### 2. Crear la red
```bash
podman network create fabric-net
```

### 3. Ejecutar el contenedor
```bash
podman run -d --name peer0-org1 \
  --network fabric-net \
  -v $(pwd)/crypto:/etc/hyperledger/fabric/crypto:Z \
  -v $(pwd)/config:/etc/hyperledger/fabric/config:Z \
  fabric-peer
```

### 4. Ver logs
```bash
podman logs -f peer0-org1
```

Asegúrate de colocar los archivos correctos en las carpetas `crypto/` y `config/` antes de ejecutar el contenedor.
