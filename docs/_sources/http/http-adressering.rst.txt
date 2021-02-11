Adressering: URL
----------------

.. figure:: http-url.png
   :width: 600px
   :align: center

   Webadres: Uniform Resource Locator

Een webadres ofwel URL (Uniform Resource Locator) heeft de vorm: ``http://<host>:<poort><pad>``

* ``http:`` of ``https:`` - schema (protocol): HTTP of HTTPS;
* ``<host>`` - domeinnaam of IP-adres van de webserver, voor het IP-protocol;
* ``<poort>`` -nummer - TCP-poort; default: 80 voor HTTP, 443 voor HTTPS;
* ``<pad>`` - adres (bijv. bestandsnaam) van de *resource* binnen de server.

**Voorbeeld:** ``https://infvopedia.nl/demo/iot-app.html``

Voor een server in het publieke internet gebruik je meestal een domeinnaam,
zoals ``infvopedia.nl``.
De browser stuurt een verzoek naar de DNS-server om deze naam om te zetten in het bijbehorende IP-adres.
(Nog een voorbeeld van een client-server interactie.)
Het pad-gedeelte ``/demo/iot-app.html`` identificeert het HTML-document (bestand) op de server.

**Voorbeeld:** ``http://192.168.1.123/leds/0``

Dit is een voorbeeld van een IoT-knoop als webserver in een lokaal netwerk.
Een computer in een lokaal netwerk heeft meestal geen domeinnaam:
je gebruikt dan het IP-adres, zoals ``192.168.1.123``.
Het pad-gedeelte ``/leds/0`` identificeert led 0 van de IoT-knoop.

*Opmerking* In een URL kun je nog meer onderdelen tegenkomen, voor de eenvoud zijn die hierboven weggelaten.
Voor de details, zie de Wikipedia-pagina of de officiële beschrijving in RFC3986.

*Opmerking* De notatie voor URL's wordt ook voor andere protocollen dan HTTP gebruikt,
bijvoorbeeld: ``file:`` - voor bestanden; ``ftp:`` - voor het File Transfer Protocol (FTP); of ``mailto:`` - voor e-mail.

Zie:

* https://en.wikipedia.org/wiki/URL
* https://tools.ietf.org/html/rfc3986 (officiële beschrijving van URI en URL)
