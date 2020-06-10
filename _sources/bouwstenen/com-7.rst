Uit de IoT-praktijk
-------------------

.. figure:: Hue-lampen-dimmer-bridge.png
  :width: 600px
  :align: center

  Slimme lampen met Bridge

Voor IoT-toepassingen thuis is het zinvol om te begrijpen
wat de rol van de verschillende apparaten is en welke verbindingen en diensten in het internet gebruikt worden.
Belangrijke vragen daarbij zijn: waar zijn mijn data? wie beheert mijn data? wie heeft toegang tot mijn data?

Als je de IoT-devices en controllers in je lokale netwerk wilt bereiken vanuit een mobiele app,
heb je gewoonlijk een server of broker in het publieke netwerk nodig.
Deze server is vaak gebonden aan de fabrikant of aan een commerciële dienst.

**Hue.** Voor de Hue slimme verlichting combineert de *Hue-bridge* de functies van gateway en lokale controller.
De Hue-server in het publieke internet zorgt voor de communicatie met enerzijds deze bridge,
en anderzijds de apps en eventueel andere diensten in het publieke internet.

**Sonoff.** Voor het bedienen van Sonoff apparaten met een smartphone is een Sonoff App beschikbaar.
De Sonoff-apparaten maken contact met de Sonoff server (itead.cc, via MQTT?).
De App maakt via de Sonoff server contact met de apparaten bij je thuis.

Zoals je ziet is er bij deze apparaten steeds een server van de leverancier betrokken.
Dat kan een bron zijn van privacy- en veiligheidsproblemen.
Bovendien heeft elke fabrikant zijn eigen servers en protocollen.

Voor veel "slimme" apparaten speelt zo'n server van de leverancier een rol.
Dit geldt ook voor diensten als Google Home Assistant, Apple Homekit, Amazon Alexa, enz.

**TheThingsNetwork** De Application server van TTN verzorgt de communicatie
tussen het TTN netwerk (de TTN LoRaWan server) en de toepassingserver (NodeRed e.d.).
De IoT-berichten zijn *end-to-end* versleuteld zijn tussen de IoT-devices en de TTN Application server.
Deze heeft toegang tot inhoud van de IoT-berichten.
(Als je dat niet wilt, kun je een eigen Application server inrichten.)

Voor een doe-het-zelf IoT-oplossing kun je je eigen server/broker in het publieke internet gebruiken.
Zoals we zullen zien is een MQTT-broker voldoende.

Voor het analyseren van het verkeer tussen de lokale IoT-devices en hun "home" en andere servers kun
je de volgende toepassing gebruiken:

* https://www.sidnlabs.nl/nieuws-en-blogs/kijken-naar-internetverkeer-met-behulp-van-spin-een-philips-hue-casestudie
* https://spin.sidnlabs.nl/en/
