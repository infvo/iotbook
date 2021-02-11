RFM69 payload: LPP formaat
==========================

FIGUUR!

De RFM69-berichten zijn kort: ten hoogste ca. 60 bytes.
Dit betekent dat we sensor- en actuatorgegevens compact moeten coderen:
JSON is veel te omslachtig.
We gebruiken een variant van het binaire Cayenne LPP-formaat.
(Deze kunnen we ook gebruiken we ook voor de LoRaWan-berichten.)


* LPP-*payload*, per sensor/actuator:
    * *channel* (1 byte): identificeert de sensor/actuator in de IoT-knoop;
    * *type* (1 byte):type van de sensor/actuator;
    * *value* (1 of meer bytes): de waarde(n) van de sensor (of actuator).

Voorbeelden van sensor/actuatorgegevens in LPP-formaat:

* ``0, 1, 1``: channel=0 (LED 0), type="dOut", value=1 ("on")
* ``3, 103, 0, 235``: channel=3, type="temperature", value=235 (23,5 'C)

De waarde(n) van een sensor/actuator bestaat uit een reeks gehele getallen, van 1 of 2 bytes elk.
Door gehele getallen te gebruiken voorkomen we onder meer het (dure) rekenen met floating point getallen in de IoT-knoop.
Bovendien leveren de meeste sensoren een geheel getal als gemeten waarde:
het werken met floating point getallen voegt niets toe.

De types en de interpretatie van de data staan beschreven in de Cayenne-documentatie,
zie XXX

Enkele voorbeelden van veel voorkomende types sensoren en actuatoren:

.. csv-table:: LPP types
   :header: "Sensor", "Naam", "Type", "Hex", "Bytes", "Resolutie"
   :widths: 15, 10, 5,  2, 2, 15

   "Digitale input",    "dIn",    0, 0, 1, "1"
   "Digitale output",   "dOut", 	1, 1,	1, "1"
   "Analoge input", 	  "aIn",  	2, 2,	2, "0.01 Signed"
   "Analoge output", 	  "aOut", 	3, 3,	2, "0.01 Signed"
   "Lichtniveau",       "illuminance",  101, 65, 2, "1 Lux Unsigned"
   "Aanwezigheid",      "presence",     102, 66, 1, "1"
   "Temperatuur",       "temperature", 	103, 67, 2,	"0.1 °C Signed"
   "Rel. Luchtvochtigheid", "humidity", 104, 68, 1, "0.5% Unsigned"
   "Luchtdruk",         "barometer",    115, 73, 2,	"0.1 hPa Unsigned"

.. rubric:: LPP downlink-berichten

De payload voor een downlink-bericht is erg eenvoudig:

* *port*: geeft het toepassingsprotocol aan; ``port=1`` staat voor de LPP payload;
* de LPP-payload, per actuator:
    * *channel* (1 byte);
    * *value* (1 of 2 bytes)
* een afsluiter (1 byte): ``0xff`` (geen geldig channel)

We nemen hier het type van de actuator niet op: dit is in de knoop zelf bekend.
Ook de *nodeid* is niet nodig: de IoT-knoop kent zijn eigen *nodeid*.

Referenties:

* https://developers.mydevices.com/cayenne/docs/lora/#lora-cayenne-low-power-payload
* (Arduino library hiervoor)
