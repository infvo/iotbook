Payload
-------

(fig. binair gecodeerd uplink-bericht met temperatuur en luchtdruk.)

De payload van een LoRa-bericht probeer je kort te houden - maximaal enkele tientallen bytes.
(Zie de opmerkingen hiervoor.)
Door het gebruik van een binair gecodeeerd formaat kun je de payload klein houden.
Een tekstbericht zoals in JSON-formaat is al snel veel te groot.
De codering van de uplink-payload gebeurt in het device (IoT-knoop).
In de TTN-application moet je dan een passende decodeerfunctie hebben
die deze payload weer omzet in een JavaScript object. Deze functie kun je definiëren via het console.

Voor de downlink-payload gebeurt de codering in de TTN-application,
en de decodering in het device.

Een veel gebruikt binair formaat is het Cayenne Low Power Payload (Cayenne LPP) formaat.

*Opmerking.* In het algemeen is het verstandig om in de devices zelf en
in de communicatie tussen device en gateway te werken met gehele getallen.
Als je werkt met decimalen kan het handig zijn om de waarden te schalen:
bijvoorbeeld 21,7 'Celcius geef je dan weer als 217.

De MQTT-berichten die TTN verstuurt naar externe toepassingen bevatten naast de eigenlijke payload
ook de metadata van het oorspronkelijke bericht, zie: https://www.thethingsnetwork.org/docs/applications/mqtt/api.html 

Video: https://www.youtube.com/watch?v=nT2FnwCoP7w
