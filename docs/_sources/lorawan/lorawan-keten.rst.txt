De LoRaWan-keten
----------------

.. figure:: images/LoRaWan-keten.png
    :width: 600px
    :align: center

Een LoRaWan-netwerk bestaat uit IoT-devices, gateways, de netwerk-server,
en application servers.

Een LoRaWan **IoT-device** (IoT-knoop, end node) bevat naast een LoRa radio de LoRaWan protocol-stack.
Een IoT-device kan mobiel zijn: als deze maar in het bereik van tenminste één gateway blijft.
Een bericht van een IoT-device kan door meerdere gateways ontvangen worden.
Elk IoT-device is gekoppeld aan één enkele LoRaWan-toepassing.

De **gateways** vormen de verbinding tussen het LoRaWan radio-netwerk en de netwerkserver.
Je kunt zo’n gateway vergelijken met een “zendmast” van het mobiele telefonienetwerk.

De **netwerkserver** combineert de berichten van de verschillende gateways tot
één berichtenstroom voor elke toepassing, en stuurt deze door naar de bijbehorende application server.

De **application servers** bevatten de toepassingen.
De payload van de berichten tussen een IoT-device en de bijbehorende toepassing zijn *end-to-end* versleuteld,
zodat de gateways en de netwerkserver deze niet kunnen lezen.
