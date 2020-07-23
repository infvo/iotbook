Payload
-------

.. figure:: images/cayenne-lpp.png
  :width: 600px
  :align: center

  Payload in binair Cayenne LPP formaat

De payload van een LoRa-bericht probeer je klein te houden - maximaal enkele tientallen bytes.
(Zie de opmerkingen hiervoor.)
Je gebruikt daarom het liefst een binair formaat.
Een tekstbericht zoals in JSON-formaat is al snel veel te groot.
De codering van de uplink-payload gebeurt in het device (IoT-knoop).
In de TTN-application moet je dan een passende *decodeerfunctie* hebben
die deze uplink-payload weer omzet in een JavaScript object.
Deze functie kun je definiëren via het console.

Voor de downlink-payload gebeurt de codering in de TTN-application,
en de decodering in het device.

Een veel gebruikt binair formaat is het Cayenne Low Power Payload (Cayenne LPP) formaat.

* https://community.mydevices.com/t/cayenne-lpp-2-0/7510
* https://developers.mydevices.com/cayenne/docs/lora/#lora-cayenne-low-power-payload

*Opmerking.* In het algemeen is het verstandig om in de devices zelf en
in de communicatie tussen device en gateway te werken met gehele getallen.
Als je werkt met decimalen kan het handig zijn om de waarden te schalen:
bijvoorbeeld 21,7 'Celcius geef je dan weer als 217.

Soms is zelfs het Cayenne-LPP formaat niet compact genoeg:
je kunt dan een eigen binaire codering bedenken, waarbij je gebruik maakt
van al je kennis over de sensorwaarden die je denkt te versturen.
Zie bijvoorbeeld: 

De MQTT-berichten die TTN verstuurt naar externe toepassingen bevatten naast de eigenlijke payload
ook de metadata van het oorspronkelijke bericht, zie: https://www.thethingsnetwork.org/docs/applications/mqtt/api.html

Video: https://www.youtube.com/watch?v=nT2FnwCoP7w
