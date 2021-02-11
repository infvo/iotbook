RFM69-radio
===========

We gebruiken de RFM69-radio als *pakketradio* in de 868MHz band.
Deze radio heeft een bereik van maximaal 50-200 meter,
en daardoor geschikt voor toepassingen in en rond huis (of school).
Ook Z-wave gebruikt deze radioband.
BLE en ZigBee gebruiken de 2,4GHz band, net als WiFi.

.. Topic:: De 868 MHz ISM band

  De 868 MHz band is een zogenaamde *Industrial, Scientific and Medical (ISM) band*:
  deze band is vrij te gebruiken, zonder speciale licenties.
  Wel zijn er enkele beperkingen om ervoor te zorgen dat de gebruikers elkaar niet in de weg zitten:

  * een radio mag alleen met een klein vermogen zenden (max. 25mW ofwel 14dB).
  * een radio mag niet meer dan 1% van de tijd zenden (*1% max. duty cycle*)

  Een pakketradio mag dan na het versturen van een pakket met een *air time* van 0.1 seconde,
  de volgende 10 seconden niet zenden.

  Je kunt de *air time* van aan pakket klein houden door (i) het aantal bytes per pakket te beperken;
  (ii) een grote bitrate te gebruiken.
  Als je de bitrate groter maakt, neemt het bereik af.
  Voor een lokale radio zoals de RFM69 (bereik 50-200m) maken we daarom andere keuzes dan voor "long range" radio's zoals LoRa (bereik tot enkele km).

* https://www.arcep.fr/fileadmin/reprise/dossiers/frequences/ERC-REC-70-03E-version02.PDF
* https://www.ti.com/lit/an/swra048/swra048.pdf
