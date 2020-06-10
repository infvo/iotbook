MQTT sensor-flow
----------------

In deze sensor-flow gebruik je een MQTT-input-node om de sensorwaarden van een IoT-knoop te ontvangen.
De ontvangen waarden vind je in het debug-venster.
Om deze flow te gebruiken moet je eerst de verschillende nodes configureren (dubbelklik op de node):

* de  *nodeid* in het topic van de MQTT-input-node verander je in de *nodeid* van je eigen IoT-knoop;
  voorbeeld: ``node/e0f1/sensors``
* de MQTT-broker van de MQTT-input-node configureer je met de gegevens van je MQTT-broker;
  vergeet niet de gebruikersnaam en het wachtwoord;
* **deploy** de aangepaste flow. De MQTT-node moet nu melden dat deze *connected* is.
* we gebruiken in dit voorbeeld een JSON-node:
  deze zet een JSON-string-vorm om in een JavaScript-object.
  In het debug-venster vind je dan beide vormen terug: controleer dit.
* schakel één van de beide debug-nodes uit met de knop aan de rechterkant (en **deploy**!).
  Je ziet dan maar één van beide vormen in het debug-venster.

.. figure:: mqtt-sensor-flow-0.png
   :width: 600 px
   :align: center

   MQTT sensor flow

Flow:

.. code-block:: json

  [{"id":"db8775b0.d5ebf8","type":"mqtt in","z":"ffc7967f.8cd98","name":"","topic":"node/ec54/sensors","qos":"2","broker":"f4b28537.29eb48","x":190,"y":120,"wires":[["553ee431.775ac4","d065b3dd.226998"]]},{"id":"553ee431.775ac4","type":"debug","z":"ffc7967f.8cd98","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":430,"y":120,"wires":[]},{"id":"8675f8e8.eb7ff8","type":"debug","z":"ffc7967f.8cd98","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":630,"y":200,"wires":[]},{"id":"d065b3dd.226998","type":"json","z":"ffc7967f.8cd98","name":"","property":"payload","action":"","pretty":false,"x":410,"y":200,"wires":[["8675f8e8.eb7ff8"]]},{"id":"f4b28537.29eb48","type":"mqtt-broker","z":"","name":"","broker":"localhost","port":"1883","clientid":"","usetls":false,"compatmode":true,"keepalive":"60","cleansession":true,"willTopic":"","willQos":"0","willPayload":"","birthTopic":"","birthQos":"0","birthPayload":""}]
