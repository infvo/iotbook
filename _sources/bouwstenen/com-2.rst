IoT-radio
---------

.. figure:: IoT-radio-vergelijking.png
    :width: 500px
    :align: center

    Vergelijking tussen verschillende IoT-radio's

In veel gevallen willen we gebruik maken van IoT-knopen die mobiel zijn en/of niet gemakkelijk van een netvoeding voorzien kunnen worden.
We hebben dan een draadloze (radio-)verbinding nodig in combinatie met een batterij.
Om de batterij niet te groot te maken gebruiken we bij voorkeur een energiezuinige radio.
Voor veel Iot-toepassingen werken we bovendien met radio's in licentievrije frequentiebanden,
bijvoorbeeld rond 2.4 Ghz, 5 Ghz, 818MHz, 430 MHz.
Voorbeelden van dergelijke radio's zijn: WiFi, Bluetooth (in het bijzonder BLE: Bluetooth Low Energy),
ZigBee, RFM69, LoRa, SigFox, e.d.

Een dergelijke IoT-radio heeft meestal de volgende beperkingen:

- het zendvermogen is beperkt (zowel vanwege de beperkte batterij als vanwege de gebruikte frequentieband);
- de bitrate (bits/s dat verstuurd kan worden) is beperkt, en/of
- het bereik (de afstand waarover berichten betrouwbaar ontvangen kunnen worden) is beperkt.

In het algemeen geldt dat bij gelijk zendvermogen, je kunt kiezen tussen een groter bereik of een grotere bitrate.
Voor het versturen van bits over een grotere afstand heb je meer energie per bit nodig.

In de volgende hoofdstukken werken we voorbeelden uit voor enkele van deze IoT-radio's:
WiFi, RFM69, en LoRa. (Mogelijk dat we in de toekomst daar nog 1 of 2 voorbeelden aan toevoegen.)

We kunnen de vergelijking tussen de radio's als volgt samenvatten:

.. csv-table::
  :header: "Radio", "Bandbreedte (bit/s)", "Bereik", "Energieverbruik"
  :widths: 15, 25, 15, 25

  WiFi, groot, ca. 50m, groot (netvoeding)
  RFM69, klein, ca. 100m, klein (batterij)
  LoRa, (erg) klein, ca. 2000m, klein (batterij)
