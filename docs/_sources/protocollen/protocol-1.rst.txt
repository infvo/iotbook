Inleiding
---------

.. figure:: Alice-Bob-1.png
  :width: 400px
  :align: center

  Communicatie van Alice naar Bob

Om communicatie goed te laten verlopen heb je afspraken nodig.
Deze afspraken noemen we het *communicatieprotocol*,
of kortweg *protocol*.

In het voorbeeld wil Alice Bob een bericht sturen. Hiervoor moet Alice het bericht in een vorm gieten (representeren) die naar Bob getransporteerd kan worden,
en die Bob weer kan begrijpen (interpreteren.)

Een netwerk-communicatieprotocol bevat meestal de volgende elementen:

* adressering: in een netwerk moet de zender de ontvanger van de communicatie identificeren/adresseren;
* payload: de eigenlijke inhoud van de communicatie, in een afgesproken vorm;
* metadata: extra gegevens voor het protocol en/of over de eigenlijke inhoud;
* interactiemodel: op welke manier communiceren de deelnemers, wie kan het initiatief nemen, enz.

.. rubric:: Voorbeeld: HTTP

HTTP is het protocol tussen een browser (web client) en een webserver.
Voorbeelden van de afspraken voor het HTTP-protocol:

* adressering: URL - bijvoorbeeld "https://infvo.nl/betapartners";
* payload: HTML-document, of CSS-, JavaScript-, image-bestanden;
* metadata: de HTTP-headers, met bijvoorbeeld cookies, gegevens over de browser, enz.;
* interactiemodel: client-server, met de browser als client en de webserver als server.
