De LoRaWan-keten
----------------

.. figure:: LoRaWan-keten.png
    :width: 600px
    :align: center

Een LoRaWan-netwerk bestaat uit IoT-devices, gateways en een LoRaWan netwerk-server.

Een LoRaWan IoT-device (IoT-knoop, end node) bevat naast een LoRa radio de LoRaWan protocol-stack.
Een IoT-device kan mobiel zijn: als deze maar in het bereik van tenminste één gateway blijft.
Een bericht van een IoT-device kan door meerdere gateways ontvangen worden.
Elk IoT-device is gekoppeld aan een enkele LoRaWan-toepassing.

De LoRaWan gateways vormen de verbinding tussen het LoRaWan radio-netwerk en de LoRaWan netwerkserver.
Je kunt zo’n gateway vergelijken met een “zendmast” van het mobiele telefonienetwerk.

De LoRaWan netwerkserver combineert de berichten van de verschillende gateways tot
één berichtenstroom voor elke toepassing.
Deze netwerkserver verbindt via het internet de LoRaWan-berichtenstroom met de servers met de toepassingen.
Voorbeeld: in NodeRed ontvang je via MQTT de berichten van  je TTN-toepassing.
