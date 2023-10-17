FROM alpine:latest
ENV ORPort=443 \
    Nickname="tor_relay" \
    ContactInfo="contact@mail.com" \
    AccountingStart="day 0:00" \
    AccountingMax="10 GBytes" \
    RelayBandwidthRate="1000 KBytes" \
    RelayBandwidthBurst="5000 KBytes"
COPY tor.sh /tor.sh
RUN apk add --update --no-cache tor ntp && \
    mkdir -p /var/lib/tor && \
    chown -R tor /var/lib/tor && \
    chmod 700 /var/lib/tor && \
    chown -R tor /etc/tor && \
    chmod +x /tor.sh
USER tor
EXPOSE 443
VOLUME ["/var/lib/tor"]
ENTRYPOINT ["/tor.sh"]
CMD ["-f", "/etc/tor/torrc"]