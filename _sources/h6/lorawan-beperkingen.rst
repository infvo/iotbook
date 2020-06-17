Beperkingen van LoRaWan
-----------------------

.. figure:: LoRaWan-uplink-downlink-duty-cycle.png
    :width: 700px
    :align: center

    Beperkingen aan uplink- en downlink berichten

De vrije radioband die LoRa gebruikt heeft beperkingen:
een radio mag maximaal 1% van de tijd zenden, met een beperkt vermogen.
TheThingsNetwork eist bovendien “fair use”:
een device mag niet meer dan 30 seconden per dag zenden.

Dit geeft de volgende beperkingen:

* payload: zo klein mogelijk, typisch ca. 10 bytes;
* uplink-berichten:  maximaal ca. 20 maal maal per uur (gateway dichtbij),
  of ca. 20 maal per dag (gateway ver weg);
* uplink-berichten: "best effort", geen ontvangstbevestiging;
* downlink-berichten: enkele berichten per dag; zonder "real time" garantie.

Een kleine payload betekent dat je deze binair moet coderen: tekst (JSON) gebruikt teveel bytes.

Het IoT-device bepaalt het moment waarop dit een uplink-bericht verstuurt.
Daarna moet het device weer geruime tijd tijd wachten voordat het weer kan zenden.

Een downlink-bericht wordt door de gateway naar het IoT-device verstuurd
direct na het ontvangen een uplink-bericht.
Met andere woorden: het IoT-device bepaalt wanneer het downlink-bericht verstuurd wordt,
niet de gateway.
Dit beperkt de mogelijkheden voor “real time besturing”.
