MQTT actuator-flow
------------------

In de actuator-flow gebruik je de MQTT-output-node.
Hiermee stuur je JSON berichten naar een IoT-knoop.

* configureer de MQTT-output-node voor je IoT-knoop (nodeid) en voor je MQTT-broker.
* bij de Inject-node selecteer je voor de payload het JSON-alternatief: ``{}``.
* voor het in- en uitschakelen gebruik je de teksten ``{"0":{"dOut":1}}`` en ``{"0":{"dOut":0}}``
* controleer bij de IoT-knoop of de LED aan- en uitgaat;
* controleer eventueel de MQTT-berichten met de MQTTT-app.

.. figure:: mqtt-actuator-flow-0.png
   :width: 500 px
   :align: center

   MQTT actuator flow

.. code-block:: json

  [{"id":"d5114a87.c3aa2","type":"inject","z":"fd9cc71d.7f5e1","name":"Led-on","topic":"","payload":"{\"0\":{\"dOut\":1}}","payloadType":"json","repeat":"","crontab":"","once":false,"onceDelay":0.1,"x":210,"y":180,"wires":[["e0dcf3ba.5bdc68"]]},{"id":"e0dcf3ba.5bdc68","type":"mqtt out","z":"fd9cc71d.7f5e1","name":"","topic":"node/ec54/actuators","qos":"","retain":"","broker":"","x":500,"y":180,"wires":[]},{"id":"916570d.f38be9","type":"inject","z":"fd9cc71d.7f5e1","name":"Led-off","topic":"","payload":"{\"0\":{\"dOut\":0}}","payloadType":"json","repeat":"","crontab":"","once":false,"onceDelay":0.1,"x":210,"y":240,"wires":[["e0dcf3ba.5bdc68"]]}]
