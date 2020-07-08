Besturen via een API
--------------------

.. figure:: iot-web-api-1.png
  :width: 400px
  :align: center

  Apparaat of toepassing met webpagina's en een web-API

Het gebruik van webpagina’s voor het besturen van een IoT-knoop is bedoeld voor een browser,
met een mens als gebruiker.

Voor het besturen van een IoT-knoop vanuit een ander programma heb je een ander soort interface nodig:
een API (Application Programming Interface).
In principe kun je voor elk API een eigen protocol ontwerpen,
maar het is handig om het HTTP-protocol als basis te gebruiken.
In dat geval kun je profiteren van de hele web-infrastructuur.

Een web-API gebruikt als payload meestal JSON, in plaats van HTML:
een programma kan JSON eenvoudig in een object omzetten en omgekeerd.

Je kunt via deze web-API een apparaat in het lokale netwerk,
bijvoorbeeld een IoT-knoop, een controller of een netwerkprinter,
automatisch bewaken en besturen.
Je kunt daarvoor elke programmeertaal gebruiken, bijvoorbeeld Python.
Als je in een scriptingtaal HTTP-requests kunt opbouwen en versturen,
kun je daarmee ook toepassingen met web-API’s besturen.

Niet alleen apparaten kunnen een API hebben:
ook veel webtoepassingen hebben, naast het normale gebruikersinterface via webpagina's,
een web-API waarmee je deze toepassing met behulp van programma's en scripts kunt automatiseren.

Enkele voorbeelden van toepassingen met een web-API:

* Trello - https://developer.atlassian.com/cloud/trello/rest/api-group-actions/
* Google Docs - https://developers.google.com/docs/api
* Wikipedia/Mediawiki - https://www.mediawiki.org/wiki/API:Main_page
* Slack - https://api.slack.com/web
* GitHub - https://developer.github.com/v3/
