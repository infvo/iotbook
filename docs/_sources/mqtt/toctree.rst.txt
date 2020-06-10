****
MQTT
****

In dit hoofdstuk behandelen we WiFi-gebaseerde IoT-devices met het MQTT-protocol.

WiFi is vooral geschikt voor lokaal gebruik (LAN),
voor apparaten die gemakkelijk van voldoende energie voor de WiFi-radio voorzien kunnen worden
(netvoeding, grote batterij).

MQTT is voor IoT-toepassingen dan het web-protocol HTTP.
MQTT is een publish/subscribe protocol waarbij alle berichten gecommuniceerd worden via de MQTT-broker.

Als MQTT-payload gebruiken we JSON (JavaScript Object Notation).
JSON-LPP sluit aan op het binaire formaat dat veel gebruikt wordt
door IoT-devices met veel beperktere radio's, zoals LoRa.

.. toctree::
   :maxdepth: 1

   mqtt-inleiding.rst
   mqtts1.rst
   mqtts2.rst
   mqtts3.rst
   mqtts4.rst
   mqtts5.rst
   mqtts6.rst
   mqtt-toetsvragen.rst
   mqtt-opdrachten.rst
   nodered/mqtt-nodered.rst
