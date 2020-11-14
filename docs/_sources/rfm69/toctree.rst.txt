************
RFM69-knopen
************

.. admonition:: Concepten en leerdoelen

  * ISM-band 868 MHz
  * pakketradio
  * adressering in RFM-netwerk
  * binaire payload, LPP formaat
  * gateway, protocolconversie

In dit hoofdstuk behandelen we de RFM69 IoT-radio als voorbeeld van een lokale IoT-radio.
Andere voorbeelden van lokale IoT-radio's zijn Bluetooth LE (BLE), ZigBee, en Z-wave.

De RFM69-radio is een voorbeeld van een eenvoudige pakketradio, met kleine pakketten van ongeveer 60 bytes.
Dit betekent dat je de IoT-gegevens compact moet coderen. Een voorbeeld hiervan is de binaire Cayenne LPP codering.

Om IoT-knopen met een RFM69-radio te verbinden aan het lokale WiFi/Ethernet netwerk heb je een gateway nodig.
Omdat het RFM69-radio geen IP-protocol gebruikt, moet deze gateway ook protocol-conversie verzorgen.
Kenmerken van de toepassing vind je dan terug in de gateway.

Een belangrijke reden om de RFM69-radio te behandelen is het hoge "Doe Het Zelf"-gehalte:
je kunt deze radio goed combineren met Arduino's en andere voorbeelden van physical computing.
Je hebt hiervoor geen grote en complexe libraries nodig zoals bij sommige andere radioprotocollen.
Bovendien is alle software open source: je kunt je hierin verder verdiepen via IoT-1.

.. toctree::

  rfm69-keten.rst
  rfm69-radio.rst
  rfm69-protocol.rst
  rfm69-lpp-formaat.rst 
  rfm69-gateway.rst
  rfm69-toetsvragen.rst
  rfm69-opdrachten.rst
