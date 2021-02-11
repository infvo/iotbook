IoT protocolstack
------------------

.. figure:: RFM69-MQTT-IP-stack.png

Voor IoT-toepassingen heb je meestal te maken met twee soorten protocolstacks:

* de radio-netwerkstack voor de verbinding tussen de IoT-knoop en het netwerk;
* de internetstack voor de verbinding met het internet.

De IoT-gateway vormt de verbinding tussen deze beide stacks.
Meestal betekent dit dat je in de gateway protocolconversie nodig hebt.
Alleen in het geval van IoT-knopen op basis van WiFi is de rol van de gateway
beperkt het IP-niveau.

Voor de IoT-communicatie in het internet gebruiken we meestal MQTT.
