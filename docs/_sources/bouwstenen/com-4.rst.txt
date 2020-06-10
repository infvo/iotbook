LAN-WAN-gateway
---------------

.. figure:: IoT-chain-communication.png
  :width: 800px
  :align: center

  IoT-keten - verdeeld over "edge" en "cloud"

De LAN-WAN-gateway (thuisrouter) verzorgt de verbinding tussen het lokale netwerk (LAN) en het internet,
via het wide-area network (WAN) van de internet service provider (ISP).
Vaak is deze gateway gecombineerd met andere functies, zoals die van firewall,
lokale router en WiFi-basestation.

Meestal is een LAN-gateway voor thuisgebruik een zogenaamde NAT-router:
dit staat voor “Network Address Translation”.
Het lokale netwerk gebruikt dan geen echte (publieke) internetadressen,
maar lokale (of “private”) adressen van de vorm 192.168.xxx.xxx, 10.xxx.xxx.xxx, 172.xxx.xxx.xxx.
De LAN-gateway heeft zelf één enkel publiek internetadres.
NAT betekent dat de LAN-gateway deze lokale adressen omzet
naar dit publieke interadres, en omgekeerd.

Een gevolg is dat computers in het lokale netwerk niet direct bereikbaar zijn vanuit het publieke internet.
Dit betekent dat ook de IoT-knopen en/of de IoT-gateway niet direct bereikbaar zijn.
(Dit heeft voordelen voor de veiligheid in het lokale netwerk.)

In de voorbeelden die we in de latere hoofdstukken uitwerken gebruiken we
een MQTT-broker (server) in het publieke internet.
Via het MQTT-protocol en deze broker kunnen we zowel “van binnen naar buiten”
als “van buiten naar binnen” communiceren.

zie: https://nl.wikipedia.org/wiki/Network_address_translation,
https://en.wikipedia.org/wiki/Network_address_translation
