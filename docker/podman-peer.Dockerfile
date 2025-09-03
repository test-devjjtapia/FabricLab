FROM hyperledger/fabric-peer:2.5

ENV FABRIC_CFG_PATH=/etc/hyperledger/fabric

WORKDIR /etc/hyperledger/fabric

COPY ./crypto ./crypto
COPY ./config ./config
COPY ./scripts/start-peer.sh /start-peer.sh

RUN chmod +x /start-peer.sh

CMD ["/start-peer.sh"]
