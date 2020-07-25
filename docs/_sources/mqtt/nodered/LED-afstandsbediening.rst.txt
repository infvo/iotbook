LED-afstandsbediening
---------------------

Met de NodeRed UI-nodes maak je een web-interface om de LED van een IoT-knoop aan- en uit te zetten.

.. figure:: Nodered-remote-led-0.png
   :width: 600 px
   :align: center

   NodeRed remote led control

Uitleg bij deze flow:

* we gebruiken de function-node om de achtergrondkleur van de knoppen aan te passen:
  rood als de led brandt, blauw als deze niet brandt.

.. code-block:: JavaScript

  if (msg.payload.payload[0].dOut == 1) {
      msg.background = "red";
  } else {
      msg.background = "blue";
  }
  return msg;

* ``msg.payload`` is hier het MQTT-JSON-bericht;
  dit is een object met als ``payload`` de sensorgegevens in LPP-formaat;
* ``payload[0]`` geeft de toestand van LED0 weer;
* de on-button maakt (bij indrukken van de knop) een JSON-bericht aan: ``{"0":{"dOut":1}}``
* de off-button maakt een JSON-bericht aan:  ``{"0":{"dOut":0}}``
* de MQTT-output-node verstuurt dit bericht via de broker naar de IoT-knoop.

De flow: download :download:`mqtt-led-remote-flow.json <./mqtt-led-remote-flow.json>`.
