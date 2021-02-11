Gebruik van MQTT in het IoT
===========================

MQTT is een Publish/Subscribe-protocol voor het Internet of Things.
Zowel IoT-knopen (IoT-devices) als IoT-toepassingen (apps) zijn dan clients van de MQTT-broker.
De interactie is symmetrisch:
zowel een IoT-knoop als een IoT-toepassing kan een bericht publiceren naar de broker.

Een typisch gebruik van MQTT voor IoT-toepassingen:

Een **IoT-knoop**:

* heeft topics voor de eigen sensoren en actuatoren;
* *publiceert zijn sensordata* naar de broker,
  als de sensordata veranderd zijn, of met een vaste regelmaat;
* *abonneert* zich op de *actuatordata* voor de eigen actuatoren.

Een **IoT-toepassing**:

* *abonneert* zich op de sensordata van de relevante knopen;
* stuurt een actuator in een IoT-knoop aan door een *publish*,
  van een bericht met het actuator-topic van de IoT-knoop.

.. rubric:: Voorbeeld

.. figure:: MQTT-IoT.png
   :width: 500 px
   :align: center

   MQTT in het Internet of Things

Uitleg:

* IoT-knoop A is geabonneerd op het eigen actuator-topic: *subscribe(A/led)*
* analoog voor IoT-knoop B
* toepassing (app) C is geabonneerd op het sensor-topic van B: *subscribe(B/sensors)*;
* analoog voor app D: *subscribe(A/sensors)*
* IoT-knoop A publiceert zijn sensordata ("123") onder topic *A/sensors*
* toepassing D ontvangt deze sensordata
* toepassing D stuurt de LED van de node A aan ("on").
* IoT-knoop A ontvangt het bericht voor het aansturen van de eigen LED
* de broker stuurt de sensordata door naar de apps, en de led-aansturing naar de IoT-knopen.

In het onderstaande interactie-diagram zie je dit uitgewerkt.

.. figure:: MQTT-interaction.png
   :width: 700 px
   :align: center

   MQTT interactie
