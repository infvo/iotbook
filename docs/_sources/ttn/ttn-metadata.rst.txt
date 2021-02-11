TTN-Metadata
------------

.. figure:: images/ttn-console-data.png
  :width: 800px
  :align: center

  Payload en metadata van een reeks berichten in de TTN console

Via het console kun je de berichten (data) van een application of van een enkel device bekijken.
In de berichten die je via TTN onvangt vind je twee soorten metadata:
(i) de metadata van het LoRaWan-protocol; (ii) de metadata van de gateways.

**LoRaWan metadata.**
De metadata in een LoRaWan bericht bevat onder meer de volgende gegevens:

* soort bericht (Join; Join accept; unconfirmed data up; confirmed data up; enz.)
* (frame) counter (2 of 4 bytes)
* port number (1..223)
* device address (geeft device id)

**Frame counter**: alle uplink-berichten van het device naar het netwerk zijn opeenvolgend genummerd.
De TTN-server houdt per device bij wat de laatst ontvangen framecounter is.
Berichten met een eenzelfde of lagere framecounter worden genegeerd.
Hiermee voorkom je onder andere “replay attacks”,
waarbij de aanvaller een eerder verstuurd LoRa-bericht (met een bepaalde betekenis) opvangt,
bewaart, en nogmaals verstuurt.
Aan de hand van de framecounter kun je in de application ook zien of er berichten verloren zijn geraakt.

Ook de downlink-berichten zijn genummerd, met een eigen frame counter.
Bij een OTAA-Join worden de framecounters automatisch op 0 gezet.

**Port**: bij het verzenden van een bericht kun je een port opgeven (1..223);
daarmee kun je bijvoorbeeld verschillende soorten berichten van elkaar onderscheiden.

.. figure:: images/ttn-console-metadata.png
  :width: 350px
  :align: center

  Zend- en ontvangst-metadata van een bericht in de TTN console

**Gateway-metadata.**
In de TTN-application vind je per bericht ook de metadata van de gateways die dit bericht ontvangen hebben:
onder andere de identificatie van de gateway, de signaalsterkte bij ontvangst,
de signaal/ruisverhouding, en zo mogelijk de gateway-coördinaten.
Deze metadata vind je ook in het JSON-bericht naar de externe toepassings-server, bijvoorbeeld NodeRed.

*Opmerking*: bij TTN ben je voor de nauwkeurigheid van de gateway-coördinaten afhankelijk van de eigenaar van de gateway.
Dat betekent dat je niet altijd de positie van de IoT-knoop (device) kunt bepalen uit de gegevens van de gateways.
