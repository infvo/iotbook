NodeRed-opdrachten
==================

.. toctree::
   :maxdepth: 1

   sensor-flow.rst
   actuator-flow.rst
   dashboard-flow.rst
   LED-afstandsbediening.rst
   knipperende-leds.rst
   knopen-koppelen.rst
   doorverbinden.rst

.. bij WiFi/MQTT-keten

Bij de volgende opdrachten gebruik je NodeRed-flows met MQTT-nodes.
Met de MQTT-input- en output-nodes verbind je deze flows met de IoT-knopen.

.. admonition:: Wat heb je nodig?

  * (gratis) FRED-account voor NodeRed (in het publieke internet)
  * MQTT-broker in het publieke netwerk, bijvoorbeeld: ``infvopedia.nl:1883``;
    Vraag de toegangsgegevens hiervoor aan je docent;
  * mqt3 web-app: http://infvopedia.nl/mqt3.html;
  * zo mogelijk: IoT-knoop (ESP8266) met toepassing: ``mqtt-node-x``;
  * alternatief: IoT-knoop-simulator: http://infvopedia.nl/iotnode-app.html

Voor het configureren van de IoT-knoop, zie REF!!

.. rubric:: MQTT-nodes

+--------------------+------------------+------------------+
| **figuur**         | **naam**         | **soort node**   |
+--------------------+------------------+------------------+
| |mqtt-input-node|  | mqtt-input-node  |  input           |
+--------------------+------------------+------------------+
| |mqtt-output-node| | mqtt-output-node |  output          |
+--------------------+------------------+------------------+
| |mqtt-broker-node| | mqtt-broker-node |  configuration   |
+--------------------+------------------+------------------+

.. |mqtt-input-node| image:: nodered-mqtt-input-node.png
.. |mqtt-output-node| image:: nodered-mqtt-output-node.png
.. |mqtt-broker-node| image:: nodered-mqtt-broker-node.png

In de volgende voorbeelden gebruiken we de MQTT-input- en output-nodes.

* de MQTT-nodes configureer je met de mqtt-broker en het topic.
* de MQTT-input-node ontvangt een MQTT-bericht en levert dat op als resultaat (``msg.payload``).
* de MQTT-output-node verstuurt het bericht (``msg.payload``) naar de broker.
* er is een aparte *configuratie-node* voor de MQTT-broker.
  Deze gebruik je indirect bij het configureren van de MQTT-input- of output-node.
  Je kunt deze broker-node ook vinden via het rechter "hamburger" menu: Configuration Nodes.

.. admonition:: Let op

  Bij het configureren van een mqtt-broker-node moet je ook de gebruikersnaam en het wachtwoord invullen.
  Deze gegevens worden bij het kopiëren en plakken van een flow *niet meegekopieerd*
  (in verband met de veiligheid).
