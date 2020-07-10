LoRaWan toepassingen
--------------------

.. figure:: LoRaWan-server-toepassing.png
  :width: 600px
  :align: center

  TTN-LoRaWan en toepassingen-servers

Een TTN-LoRaWan toepassing bestaat eigenlijk uit twee delen:
het TTN-gedeelte (in TTN termen: de application, zoals je deze in het TTN-console vindt),
en de eigenlijke toepassing (in TTN termen: *integration*) op een externe server, bijvoorbeeld NodeRed.
De TTN application server vormt vormt de koppeling tussen de bijbehorende TTN-devices en de externe server.
De datacommunicatie tussen de TTN-application en de toepassingen op de externe servers gebeurt via MQTT of HTTP.

In het TTN console kun je voor een toepassing:

* de devices koppelen aan de toepassing;
* de binnenkomende en uitgaande berichten van de toepassing bekijken (data en metadata);
* de functies definiëren voor het (de)coderen van de payload van de binnenkomende en uitgaande berichten.
* de API-keys aanmaken waarmee de externe toepassingen toegang krijgen tot de data van deze toepassing.

https://www.thethingsnetwork.org/tech-stack#section7
