LoRaWan network server
----------------------

.. figure:: images/LoRaWan-server-toepassing.png
  :width: 600px
  :align: center

  TTN-LoRaWan-server en toepassingen-servers

De TTN-LoRaWan-server koppelt de berichten van de IoT-devices die via de gateways binnenkomen aan de toepassing,
*decodeert* de berichten en stuurt deze zo mogelijk door naar een externe toepassingsserver(s),
zoals NodeRed.

De communicatie met een externe toepassingsserver heet in TTN-terminologie een *integration*.
De belangrijkste protocollen hiervoor zijn MQTT en HTTP.

In de TTN console kun je een toepassing en bijbehorende devices beheren:

* koppelen van devices aan de toepassing;
* bekijken van de binnenkomende en uitgaande berichten van de toepassing (data en metadata);
* definiëren van de functies voor het (de)coderen van de payload van de binnenkomende en uitgaande berichten.
* aanmaken van de API-keys waarmee de externe toepassingsservers toegang krijgen tot de data van deze toepassing.

Zie voor meer detail: https://www.thethingsnetwork.org/tech-stack#section7
