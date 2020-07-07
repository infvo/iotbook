Een HTTP request
----------------

.. figure:: http-request-ex1.png
  :width: 700px
  :align: center

  HTTP request voorbeeld

Hierboven zie je een voorbeeld van een HTTP-request.
Dit begint met ``GET /hello HTTP/1.1``
Hierin is ``GET`` de **HTTP-method**: deze bepaald het type van het request.
De belangrijkste methods zijn

* ``GET``, waarmee de client (browser) een webpagina van de server vraagt; en
* ``POST``, waarmee de client de inhoud van een webformulier naar de server stuurt.

In het gedeelte over REST-APIs behandelen we nog enkele andere HTTP-methods.

Het URL-pad ``/hello`` geeft het pad van het webdocument op de server aan.
In veel gevallen verwijst dit naar een bestand in een filesysteem.

Tenslotte geeft ``HTTP/1.1`` de versie van het gebruikte protocol aan.

.. rubric:: Metadata: headers

Na de eerste regel volgen de *headers*:
dat zijn de metadata van het protocol, in de vorm van (naam, waarde)-paren.
Enkele veel-gebruikte headers zijn:

* ``Host`` - het domeinnaam:poortnr-deel uit de URL (bijv. ``infvopedia.nl:1880``).
* ``Accept`` - het type van de payload dat de client verwacht (bijv. ``text/html``);
* ``User-Agent`` - de identificatie van de client (browser);
* ``Cookie`` - een cookie dat eerder door de client van de server ontvangen is;
* ``Content-Type`` - het type van de payload (bijvoorbeeld ``text/html; charset=utf-8``)
