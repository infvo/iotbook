Gateway
=======

De *gateway* koppelt het RFM69-netwerk aan het internet, meer in het bijzondere aan de IoT-toepassing via het MQTT-protocol.
Een RFM-IoT-knoop verstuurt RFM69-pakketten met daarin een IOT-toepassingspakket met een LPP-payload.

.. figure:: IoT-rfm69-keten-stacks.png
  :width: 600 px
  :align: center

  Protocol-stacks in de RFM69-keten

De omzetting tussen de beide protocollen bestaat uit twee onderdelen:

* omzetten van de *adressering*: van RFM69-adres naar MQTT-topic (en omgekeerd);
* omzetten van de *payload*: van RFM69-LPP-pakket naar MQTT-JSON bericht.

Opmerking: de omzetting van de adressering voor *uplink*-berichten is eenvoudig:
de *nodeid* in het RFM69-LPP-pakket wordt ingevuld in het MQTT-topic ``node/<nodeid>/sensors``.

Voor *downlink*-berichten is dit lastiger: in het IoT-toepassingsprotocol (MQTT/JSON) is het RFM69-adres onbekend.
De gateway houdt daarom een tabel bij: nodeid -> RFM69-adres.
Als de gateway een RFM69-LPP-bericht ontvangt (in het formaat hierboven) wordt deze tabel bijgewerkt.
Als de gateway vervolgens een MQTT-bericht ontvangt voor een topic met de nodeid van een lokale node, wordt dit (na omzetting) verstuurd naar de bijbehorende RFM69-node.

----

.. admonition:: Gateway versus bridge

  We maken hier onderscheid tussen ''gateways'' en ''bridges'':
  een bridge verbindt netwerken met eenzelfde protocol(stack),
  een gateway verbindt netwerken met verschillende protocollen.
  De omzetting in een bridge is dan beperkt tot de gemeenschappelijke onderste laag van de protocollen.
  Bij een gateway moet je de hele protocolstack hierbij betrekken.
  Een gateway is  vaak (aanzienlijk) complexer dan een bridge.
  Bovendien hebben veranderingen in de toepassing mogelijk gevolgen voor de gateway.
  Voor een bridge is de toepassing niet van belang.
  Overigens wordt deze terminologie, met een duidelijk onderscheid tussen bridge en gateway,
  niet overal op dezelfde manier gebruikt.

Ook als de IoT-knoop zelf de internet-protocolstack gebruikt kan het zinvol zijn om een bridge te gebruiken,
om de lokale communicatie te scheiden van het publieke internet.
Deze bridge kan er bijvoorbeeld zorgen voor de versleuteling van het verkeer naar het publieke internet.
