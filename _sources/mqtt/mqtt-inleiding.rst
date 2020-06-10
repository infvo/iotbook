Inleiding
=========

.. figure:: IoT-keten-WiFi-MQTT.png
   :width: 600 px
   :align: center

   IoT-knopen met MQTT-broker in het publieke internet

.. rubric:: WiFi - met bestaande gateway

IoT-knopen (devices) op basis van WiFi hebben de volgende voordelen:

* doordat deze knopen de IP-protocolstack gebruiken kun je de bestaande WiFi-gateway gebruiken.
* WiFi heeft voldoende bandbreedte (bit/s) om "over the air" software-updates mogelijk te maken.
* WiFi heeft voldoende bandbreedte voor IoT-toepassingen met veel data,
  zoals camera's of microfoons.

Voor IoT-knopen heeft de WiFi-radio ook enkele nadelen:

* WiFi heeft een beperkt bereik: niet geschikt voor netwerken met dekking in een groot gebied
  (Wide area network, WAN).
* WiFi gebruikt vrij veel energie: de IoT-knoop heeft een netvoeding nodig
  of een grote batterij die regelmatig opgeladen kan worden.

IoT-knopen op basis van WiFi vind je daarom vooral in lokale netwerken,
bij apparaten die altijd op de netvoeding aangesloten zijn.
Enkele andere voorbeelden zijn: WiFi-weegschaal, WiFi-rookmelder.
(Ga na waarom WiFi voor deze apparaten geschikt is.)

.. rubric:: MQTT

Voor IoT-devices met WiFi is het webprotocol (HTTP) minder geschikt.
Het Publish/Subscribe protocol MQTT past beter bij het Internet of Things.

* de interactie via MQTT is *publish-subscribe* tussen MQTT-clients en de MQTT-broker,
  in plaats van *client-server* zoals bij HTTP;
* alleen de MQTT-broker moet altijd online zijn;
  clients zoals IoT-knopen of toepassingen hoeven dat niet.
  Dit heeft grote voordelen voor draadloze IoT-knopen.
