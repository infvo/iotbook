IoT-gateway
-----------

Voor de verbinding tussen de IoT-knoop en het lokale netwerk (LAN) hebben we een *gateway* nodig.
Deze heeft vaak twee functies:

* fysieke verbinding tussen beide netwerken;
* zo nodig: conversie tussen de protocollen van beide netwerken.

.. figure:: IoT-gateways-communicatie.png
    :width: 600px
    :align: center

    3 verschillende IoT-gateways met hun verbindingen

Als de IoT-knoop over WiFi beschikt, fungeert het WiFi-basestation als gateway.
Voor de RFM69- en LoRa-radio's zijn afzonderlijke gateways nodig.
Je hoeft niet altijd zelf een LoRa-gateway te hebben.
Als je gebruik maakt van een LoRaWan-netwerk van KPN of TTN (TheThingsNetwork) is het voldoende als er een gateway in de buurt staat.
net als een mobiele zendmast voor het mobiele netwerk.
