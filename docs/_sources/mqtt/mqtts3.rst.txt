MQTT: het protocol
==================

MQTT gebruikt zoals gezegd Publish/Subscribe als interactiemodel.
Hieronder bespreken we een aantal andere aspecten van het MQTT-protocol:
payload, adressering, metadata, en de plaats in de protocolstack.

Adressering: topic
------------------

Door middel van een *topic* adresseert een MQTT-client de berichtenstroom voor een publish- of subscribe-actie.
Een MQTT-topic bestaat uit een aantal strings gekoppeld door ``/``,
bijvoorbeeld ``abd``, ``abc/def``, ``abc/123/def``.
Dit lijkt op de padnaam in een URL.

Bij een *subscribe* kun je in de topic-string ook *wildcards* opnemen:

* ``+`` staat voor een willekeurige string zonder ``/``;
* ``#`` voor een willekeurige string waarin ook het koppelteken ``/`` mag voorkomen.

* voorbeeld: ``node/+/sensors`` past op ``node/12/sensors`` en ``node/432/sensors``.
* voorbeeld: ``node/#`` past op ``node/12/sensors`` en ``node/432/led``

.. rubric:: Gebruik van topics in de voorbeelden

We gebruiken in de software bij deze module een aantal vaste afspraken voor MQTT-topics.
Hierdoor kunnen we de verschillende soorten IoT-knopen combineren met de verschillende toepassingen.

* voor sensoren: ``node/<nodeid>/sensors``
* voor actuatoren: ``node/<nodeid>/actuators``

Hierin is ``<nodeid>`` de identificatie (string) van de IoT-knoop.

Payload: bytes/string/JSON
--------------------------

Er is geen vast voorgeschreven payload-formaat voor MQTT.
Een formaat dat veel gebruikt wordt is JSON: JavaScript Object Notation.
Dit is een tekst-gebaseerd formaat voor objecten.
Ook in de voorbeelden gebruiken we JSON als MQTT-payload.

Metadata
--------

MQTT biedt geen metadata, anders dan het topic.
In een volgende versie van MQTT (v5) krijgt de gebruiker de mogelijkheid om,
naast de eigenlijke payload, metadata mee te sturen - te vergelijken met HTTP-headers.

Protocolstack
-------------

.. figure:: WiFi-MQTT-IP-stack.png
  :width: 800px
  :align: center

* MQTT gebruikt het TCP-protocol, voor beveiligde verbindingen aangevuld met TLS;
* omdat het WiFI-IoT-device de IP-protocolstack gebruikt hoeft de WiFi-gateway alleen het IP-protocol te implementeren.
  Er is geen protocolconversie nodig.
