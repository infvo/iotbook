.. _lora-spreading-factor:

LoRa - Spreading Factor
-----------------------

.. figure:: images/lora-sf-vgl.png
  :width: 700 px
  :align: center

  Berichten met dezelfde (korte) payload bij verschillende SF-waarden

..

Om een groter bereik te krijgen bij een gegeven radiofrequentie heb je meer *energie per bit* nodig.
Als het (maximale) vermogen van een zender vastligt, bijvoorbeeld door regelgeving,
dan betekent dit dat je de duur (*airtime*) van een bit moet vergroten:
:math:`\textit{energie} = \textit{vermogen} \times \textit{tijd}`.
Anders gezegd: je moet de bitrate verlagen: :math:`\textit{tijd}/\textit{bit} = 1/\textit{bitrate}`.

In het geval van LoRa is de Spreading Factor (SF) een maat voor de duur en dus de energie per bit.
Bij het verzenden van een bericht kun je de SF opgeven.
De SF is een logaritmische maat: de tijd/bit bij SF8 is 2 maal de tijd/bit bij SF7, enz.
De tijd/bit bij SF12 is dan 32 maal de tijd/bit bij SF7.
Een bericht dat bij SF7 50 ms duurt, zal bij SF12 32*50=1600 ms duren, ofwel 1,6 s.

*Opmerking.* De bovenstaande berekening geeft een goede eerste benadering.
Door allerlei details wijken de echte waarden hier wat vanaf:
met een airtime calculator zoals
`TTN LoRaWan airtime calculator <https://www.thethingsnetwork.org/airtime-calculator>`_
krijg je een realistische waarde.

**Beperkingen.**
Omdat een LoRa-radio niet meer dan 1% van de tijd mag zenden (*1% duty cycle*),
is er na elk verzonden bericht een gedwongen pauze van ca. 100 maal de duur van dat bericht.
Voor een bericht van bijvoorbeeld 50 ms (SF7) is die pauze 5000 ms, ofwel 5 s.
Maar voor een bericht van 1600 ms (SF12) is die pauze 160.000 ms, ofwel 2,5 minuten.

De "fair use" regels van TheThingsNetwork zijn nog wat strikter:
een IoT-device mag maximaal 30 s per dag zenden.
Voor een bericht van 50 ms betekent dat maximaal ca. 30 berichten per uur,
voor een bericht van 1600 ms maximaal ca. 20 berichten per dag.

**Bereik.** De energie van een radiosignaal neemt af met het kwadraat van de afstand (:math:`1/r^2`).
Anders gezegd: het bereik neemt toe met de :math:`\sqrt{\textit{energie}/\textit{bit}}`.
De energie per bit is bij SF12 32 maal de energie per bij bij SF7.
Het bereik bij SF12 zal dan ongeveer :math:`\sqrt{32} \approx 5,6` maal zo groot zijn als bij SF7.

Samengevat: als je kiest voor een grotere SF, krijg je een groter bereik,
maar mag je minder berichten per uur versturen.
Bovendien is het energieverbruik per bericht (veel) groter.

.. csv-table:: Vergelijking van SFs voor een kort bericht
  :header: SF,airtime,berichten/uur,berichten/uur,bereik

  "","","(1% duty cycle)","(TTN: < 30 s/dag)",""
  SF7,"51,5 ms",699,24,1km
  SF8,"102,9 ms",349,"12","1,5km"
  SF12,"1.318,9 ms",27,"0,9",6km

*Opmerking* Het bereik hangt ook van allerlei andere factoren af,
zoals de gebruikte antenne's, positie van de gateway- en IoT-device-antenne,
bebouwing e.d.

*Adaptive data rate.*
Een LoRa-radio kan de SF ook aanpassen afhankelijk van de afstand tot de gateway:
als een gateway een sterk signaal met een hoge SF ontvangt van een IoT-device,
dan stuurt de gateway een verzoek terug om de SF terug te brengen.
Dat is zowel voor het IoT-device als voor het LoRa-netwerk gunstig.

Voor meer detail, zie: https://lora-developers.semtech.com/library/tech-papers-and-guides/lora-and-lorawan/
