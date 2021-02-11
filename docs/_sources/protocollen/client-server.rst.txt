Client-server interactie
------------------------

.. figure:: Client-server-interactie.png
   :width: 400 px
   :align: center

   Client-server interactie (HTTP)

In een client-server interactie stuurt de client een verzoek (request) naar de server;
de server verwerkt dit verzoek en stuurt een antwoord (response) terug.

Je kunt deze interactie vergelijken met een klant voor een loket met een loketbediende.
Na de afhandeling van een verzoek wacht de loketbediende op de volgende klant.

Het initiatief voor deze interactie ligt dus bij de client:
de server stuurt nooit ongevraagd een bericht naar de client.
De client moet de server kennen en kunnen vinden;
de server hoeft de clients niet te kennen.

Voor deze interactie moet de server in principe altijd beschikbaar en bereikbaar zijn:
online in het publieke internet.
Clients hoeven alleen tijdens de interactie online te zijn, eventueel vanuit een lokaal netwerk.

In het internet kom je de client-server interactie op veel plaatsen tegen:

* de browser (client) stuurt een verzoek met een URL naar de webserver,
  en krijgt als response van de webserver het bijbehorende HTML-document.
* de e-mail client op je computer stuurt uitgaande post naar een SMTP-mail server,
  en haalt inkomende post op van een POP3 of IMAP mail server.
* een DNS-server zet een domeinnaam ("mijnschool.nl") om in het bijbehorende IP-adres.
* een database-server biedt toegang tot een database,
  zodat verschillende client-toepassingen dezelfde database kunnen gebruiken.
