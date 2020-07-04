Metadata
--------

.. figure:: http-headers.png
   :width: 600px
   :align: center

   HTTP headers in een request

Het HTTP-protocol gebruikt *headers* voor de request-metadata.
Een header bestaat uit een naam en een bijbehorende waarde.
Naast de headers die voor het HTTP-protocol een speciale betekenis hebben,
kan een toepassing ook eigen (non-standard) headers definiëren.

Enkele veel-gebruikte headers zijn:

* ``Accept`` - het type van de payload dat de client verwacht (bijv. ``text/html``);
* ``User-Agent`` - de identificatie van de client (browser);
* ``Cookie`` - een cookie dat eerder door de client van de server ontvangen is;
* ``Content-Type`` - het type van de payload (bijvoorbeeld ``text/html; charset=utf-8``)

De bekende HTTP-cookies worden via deze headers meegegeven:

* de server stuurt een cookie naar de client (browser);
* de client stuurt vervolgens bij elk verzoek naar de server, dit cookie mee.

Dankzij zo'n cookie kan de server de opeenvolgende verzoeken van dezelfde client
aan elkaar verbinden, tot een "sessie".
Dit gebeurt bijvoorbeeld als je inlogt op een website:
bij de volgende verzoeken weet de server aan de hand van het cookie wie je bent,
of je ingelogd bent, enz.

*Opmerking.* Cookies zijn belangrijk voor de goede werking van veel websites.
Helaas worden ze daarnaast ook misbruikt om het gedrag van de gebruiker op het web te volgen ("tracking").
Sommige browsers en hulpprogramma's helpen je om dit volgen te blokkeren.

Verder lezen:

* https://en.wikipedia.org/wiki/List_of_HTTP_header_fields - een overzicht
  van de HTTP-headers en hun betekenis.
