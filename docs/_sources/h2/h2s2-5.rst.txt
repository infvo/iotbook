Interactie
----------

.. figure:: Alice-Bob-1.png
  :width: 400px
  :align: center

  Communicatie tussen Alice en Bob

De communicatie-interactie tussen Alice en Bob kan op verschillende manieren plaatsvinden:

1. Alice kan Bob een bericht sturen, bijvoorbeeld door een brief te posten.
2. Alice kan Bob opbellen: er is tijdens het gesprek een verbinding in twee richtingen (bi-directioneel).
3. Alice kan Bob een verzoek sturen waarna Bob een antwoord terugstuurt (client-server).
4. Alice kan een bericht sturen naar een tussenpersoon (makelaar, broker),
   die dit vervolgens doorstuurt naar alle geïnteresseerde Bob's.

**Bericht- of pakketcommunicatie.**
De eerste vorm kom je als pakketcommunicatie tegen in de onderste lagen van het internet,
en in het verkeer tussen IoT-devices en IoT-gateways.
Vaak is deze pakketcommunicatie "best effort",
dat wil zeggen dat er (zoals bij normale briefpost) geen bericht van ontvangst of
automatische her-transmissie van het pakket is.
Net als bij briefpost kan ook in het internet de volgorde van pakketten bij ontvangst
verschillen van de volgorde bij verzenden.
Betrouwbare communicatie moet je op een hogere laag regelen (TCP).

**Stroom- of verbindingsgeoriënteerde communicatie.**
De tweede vorm vind je als stroom- of verbindingsgeoriënteerde communicatie in het TCP-protocol:
dit biedt betrouwbare bi-directionele bytestroom-verbindingen.
TCP werkt op basis van het IP-protocol: als er IP-pakketten verloren raken,
zorgt TCP voor de her-transmissie.
