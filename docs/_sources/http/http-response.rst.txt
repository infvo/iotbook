Een HTTP-response: payload
--------------------------

.. figure:: http-response-ex1.png
  :width: 500px
  :align: center

Hierboven zie je een voorbeeld van een response,
bij het eerdere request-voorbeeld.

De eerste regel van de response geeft de resultaatcode.

``200`` betekent, zoals de rest van de regel zegt: OK.
Een andere code die je tegenkomt is bijvoorbeeld ``404``,
voor een webpagina die niet gevonden kan worden.

De regels daarna vormen de headers: de metadata van het protocol.
De header ``Content-Length`` geeft de lengte van de payload.
De header ``Content-Type`` geeft het payload-formaat aan.
Dat is in dit geval ``text/html``, voor een HTML-document;
in veel APIs kom je ook JSON tegen: ``application/json``.

De tekst daarna is de payload, in HTML-formaat.
Dit formaat is vooral bedoeld voor webpagina's die je in een browser weergeeft.
Voor APIs is het JSON-formaat handiger:
een programma kan JSON eenvoudig in een object omzetten, en omgekeerd.
