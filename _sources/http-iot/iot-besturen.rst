Besturen via de browser
-----------------------

.. figure:: IoT-webserver-interface-0.png
  :width: 500px
  :align: center

  Webpagina van een netwerkprinter


Een apparaat met een netwerkverbinding, zoals een printer of een router,
heeft vaak een ingebouwde webserver waardoor je dit apparaat via de browser kunt bewaken en besturen.
Dit kan via elke browser in het lokale netwerk.
Met een minimum aan knoppen op het apparaat zelf krijg je zo een uitgebreide besturing.
Dit is een goedkope en gebruikersvriendelijke oplossing.

Ook IoT-knopen of controllers kunnen een webserver hebben.
Via een browser kun je deze dan bewaken en besturen.
Op een webpagina kun je de waarden van de sensoren zien,
en via knoppen (van een html-formulier) de actuatoren besturen.

Voor het besturen van actuatoren, zoals slimme verlichting, is deze oplossing goed bruikbaar.
HTTP is minder geschikt voor het het bewaken van sensoren.
HTTP is een client-server protocol.
Dit betekent dat de client (browser) steeds de waarden van de sensoren moet opvragen bij de IoT-knoop (pull).
De server kan niet op het moment dat een sensorwaarde verandert,
zelf een nieuwe webpagina naar de browser sturen (push).
Een aanpak die vaak gebruikt wordt is om de browser bijvoorbeeld elke minuut de sensorwaarden op te laten vragen (polling).
Maar een sensorwaarde kan dan nog steeds bijna een minuut achterlopen,
terwijl er veel overbodige HTTP-requests verstuurd worden voor niet-veranderde sensorwaarden.
