Inleiding
---------

.. figure:: IoT-chain-communication.png
    :width: 800px
    :align: center

    IoT-keten met verbindingen en verbindingsapparaten

Hierboven zie je de IoT-keten met verbindingen en verbindingsapparaten:

* de *IoT-radioverbinding* verbindt de IoT-knoop met de *IoT-gateway*;
* de *IoT-gateway* zorgt enerzijds voor de radiocommunicatie met de IoT-knoop,
  en anderzijds voor de verbinding met lokale netwerk (LAN);
* de *LAN/WAN (lokale) gateway* verbindt het lokale netwerk (LAN) met het internet
  - via het wide-area netwerk (WAN) van de internet service provider (ISP);
* de *MQTT-broker* zorgt voor de MQTT-communicatie tussen de IoT-knopen,
  de controllers en de apps in het publieke internet;

In deze figuur zijn de fysieke communicatieverbindingen getekend:

* de IoT-radioverbinding tussen IoT-knoop en IoT-gateway;
* het lokale netwerk (LAN), met daarin de lokale controller;
* het publieke internet - verbonden via het wide area network (WAN) van de internet service provider;
* met daaraan verbonden de MQTT broker, de globale controller, de app(s) en de diensten (in de "cloud").

De keten is opgebouwd uit een lokaal deel, de *edge*, dichtbij de IoT-knopen;
en een deel op afstand, via het publieke internet.
De MQTT-broker, de globale controller en de diensten vind je vaak *in the cloud*,
in grote servercentra ("server farms").
