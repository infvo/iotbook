*****************************
Voorbeeld: slimme verlichting
*****************************

Als IoT-voorbeeld gebruiken we een domotica-voorbeeld: verlichting in huis.
We behandelen dit aan de hand van het Philips Hue systeem.

Actuatoren, sensoren en controller
----------------------------------

.. figure:: hue-local.png
    :width: 400px
    :align: center

De actuatoren zijn in dit geval de lampen.
Deze kun je bedienen met drukknoppen en met (bewegings)sensoren.
De controller ("bridge") zorgt voor de koppeling tussen de sensoren en de actuatoren.
De controller heeft geen eigen user interface:
hiervoor gebruik je de app die via het lokale (WiFi) netwerk verbinding maakt met de controller.

Aan het internet
----------------

.. figure:: hue-server.png
    :width: 500px
    :align: center

Je kunt met de app de lampen ook op afstand bedienen, via het internet.
Hiervoor maakt de app contact met de hue-server/controller in het publieke internet,
die weer contact maakt met de lokale controller.

We hebben hier te maken met 3 lagen van controllers:

* de lampen en de schakelaars zijn IoT-knopen, met lokaal sensor(en)/actuator(en),
  een microcontroller, en een radio;
* de bridge is de lokale controller;
* de server in het publieke internet is de globale controller.

Andere controllers
------------------

De lokale controller is in eerste instantie bedoeld voor verlichting.
Je kunt de lokale controller ook verbinden met andere "domotica"-controllers voor bijvoorbeeld verwarming, koeling, veiligheid e.d.
Voorbeelden van controller-software voor domotica-toepassingen zijn OpenHAB (https://www.openhab.org) en Home Assist (https://www.home-assistant.io).
Via de hue-webserver kun je verbinding maken met controller-diensten als Apple Home Kit en Amazon Alexa.

.. todo::

  * figuur van Hue met andere controller(s)
