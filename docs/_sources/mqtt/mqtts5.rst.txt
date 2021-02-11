Cayenne LPP in JSON
===================

Voor onze toepassingen gebruiken we het JSON-formaat op een speciale manier:
het is de JSON-versie van het binaire Cayenne Low Power Payload-formaat.
Dit binaire formaat gebruiken we in andere ketens (RFM69, LoRa),
waar we erg zuinig moeten zijn met de bytes voor de payload.
Door voor de verschillende ketens hetzelfde JSON-LPP-formaat te gebruiken,
kunnen we IoT-devices met verschillende radio's
gebruiken in eenzelfde toepassing.


.. rubric:: Uplink-formaat

Voor de *uplink* berichten van de IoT-knopen gebruiken we de volgende elementen:

* metadata:
    * ``nodeid``: de identificatie van een node (een string, bijvoorbeeld ``"fe3d"``).
    * ``counter``: het volgnummer van een bericht (pakket)
    * ``rssi``: (optioneel) de signaalsterkte
    * ``time``: (optioneel) het tijdstip van de communicatie (ontvangst)
* payload:
    * per sensor of actuator een *channel*, weergegeven voor een getal.
    * per channel: een object met (naam, waarde)-paren,
    * waarbij we vaste namen gebruiken, met een vaste betekenis van de waarden.

.. code-block:: json
   :caption: Voorbeeld json-lpp uplink bericht

   {"nodeid": "fe3d",
    "counter": 3027,
    "payload": {
      "0": {"temperature": 235},
      "1": {"barometer": 10093},
      "2": {"dOut": 1},
      "8": {"aOut": 255}
     }
   }

De onderstaande tabel geeft de namen voor de sensor-waarden en de betekenis van de bijbehorende waarden.

.. csv-table:: JSON-LPP types
   :header: "Sensor", "Naam",  "Bytes", "Resolutie"
   :widths: 15, 10,  5, 15

   "Digitale input",    "dIn",   1, "1"
   "Digitale output",   "dOut",  1, "1"
   "Analoge input", 	  "aIn",   2, "0.01 signed"
   "Analoge output", 	  "aOut",  2,	"0.01 signed"
   "Lichtniveau",       "illuminance", 2, "1 Lux unsigned"
   "Aanwezigheid",      "presence",    1,  "1"
   "Temperatuur",       "temperature", 	2, "0.1 °C signed"
   "Rel. Luchtvochtigheid", "humidity", 1, "0.5% unsigned"
   "Luchtdruk",         "barometer",    2, "0.1 hPa unsigned"

Opmerkingen:

* het aantal bytes geeft het maximale bereik van de waarden aan,
  bijvoorbeeld: 1 byte unsigned: 0..255, 2 bytes unsigned: 0..65536, 2 bytes signed: -32768..32767.
  De gebruikelijke waarden vallen hier ruimschoots binnen.
* we gebruiken als waarden alleen *gehele getallen*.
  In een gebruikersinterface rekenen we deze om naar de gebruikelijke eenheden.
  Bijvoorbeeld: ``"temperature": 235`` geven we dan weer als "23.5 'C", en
  ``"barometer": 10097`` als "1009.7 hPa".
* een IoT-knoop geeft in het uplink-bericht ook de waarden van de *actuatoren* (``dOut`` en ``aOut``).
  Sommige toepassingen gebruiken dit om automatisch een besturingswidget voor een actuator te maken.
* je moet zelf bijhouden welke sensor overeenkomt met "channel 1, nodeid 3ef2";
  bijvoorbeeld: de temperatuursensor in de woonkomer.
  De toepassing zou deze administratie bij kunnen houden.

.. rubric:: Downlink-formaat

Het formaat van de downlink-berichten is eenvoudiger:

* er is geen metadata; de nodeid volgt uit het MQTT-topic;
* de payload bevat alleen de gegevens van één of meer outputs (actuators).

.. code-block:: json
  :caption: Voorbeeld json-lpp downlink bericht

  {"2": {"dOut": 0},
   "8": {"aOut": 12}
  }
