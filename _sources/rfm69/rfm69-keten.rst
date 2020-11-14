RFM69 keten
===========

.. figure:: IoT-keten-RFM69.png
  :width: 600 px
  :align: center

  De RFM69 keten

We gebruiken een eigen protocol voor de RFM69-radio:
hiermee houden we de pakketten klein, en de software eenvoudig.
Het binaire Cayenne Low Power Payload (LPP) formaat gebruiken we voor de payload.

Een lokale RFM69-WiFi-*gateway* zet dit RFM69/LPP-protocol om in het MQTT/JSON-protocol voor onze IoT-toepassingen.

Op het toepassingsniveau gebruiken we MQTT/JSON-berichten met dezelfde structuur als we voor de WiFi/MQTT knopen gebruiken.
We kunnen dan de berichten van de RFM69-knopen we op dezelfde manier verwerken als de berichten van de WiFi-knopen.
