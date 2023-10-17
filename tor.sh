#!/bin/sh
echo "Write 'ORPort ${ORPort}' in /etc/tor/torrc file"
echo "ORPort ${ORPort}" >> /etc/tor/torrc
echo "Write 'ExitRelay 0' in /etc/tor/torrc file"
echo "ExitRelay 0" >> /etc/tor/torrc
echo "Write 'SocksPort 0' in /etc/tor/torrc file"
echo "SocksPort 0" >> /etc/tor/torrc
echo "Write 'DataDirectory /var/lib/tor' in /etc/tor/torrc file"
echo "DataDirectory /var/lib/tor" >> /etc/tor/torrc
echo "Write 'Exitpolicy reject *:*' in /etc/tor/torrc file"
echo "Exitpolicy reject *:*" >> /etc/tor/torrc
echo "Write 'Nickname ${Nickname}' in /etc/tor/torrc file"
echo "Nickname ${Nickname}" >> /etc/tor/torrc
echo "Write 'ContactInfo ${ContactInfo}' in /etc/tor/torrc file"
echo "ContactInfo ${ContactInfo}" >> /etc/tor/torrc
echo "Write 'AccountingStart ${AccountingStart}' in /etc/tor/torrc file"
echo "AccountingStart ${AccountingStart}" >> /etc/tor/torrc
echo "Write 'AccountingMax ${AccountingMax}' in /etc/tor/torrc file"
echo "AccountingMax ${AccountingMax}" >> /etc/tor/torrc
echo "Write 'RelayBandwidthRate ${RelayBandwidthRate}' in /etc/tor/torrc file"
echo "RelayBandwidthRate ${RelayBandwidthRate}" >> /etc/tor/torrc
echo "Write 'RelayBandwidthBurst ${RelayBandwidthBurst}' in /etc/tor/torrc file"
echo "RelayBandwidthBurst ${RelayBandwidthBurst}" >> /etc/tor/torrc
chown -R tor /var/lib/tor/keys
chmod 700 /var/lib/tor/keys
exec tor "$@"