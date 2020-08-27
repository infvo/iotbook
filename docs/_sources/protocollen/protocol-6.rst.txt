Client-server interactie
------------------------

.. figure:: Client-server-interactie.png
   :width: 400 px
   :align: center

   Client-server interactie (HTTP)

In een client-server interactie stuurt de client een verzoek (request) naar de server;
de server verwerkt dit verzoek, en stuurt een antwoord (response) terug.

Je kunt deze interactie vergelijken met een klant voor een loket met een loketbediende.
Na de afhandeling van een verzoek wacht de loketbediende op de volgende klant.

Voor deze interactie moet de server in principe altijd beschikbaar en bereikbaar zijn:
online in het publieke internet.
Clients hoeven alleen tijdens de interactie online te zijn, eventueel vanuit een lokaal netwerk.

Het webprotocol HTTP gebruikt een *client-server* interactie:
de browser (client) stuurt een verzoek met een URL naar de webserver,
en krijgt als response van de webserver het bijbehorende HTML-document.
In plaats van de browser kunnen ook andere programma's als webclient optreden.
