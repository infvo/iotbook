Inleiding
=========

In dit hoofdstuk behandelen we het HTTP-protocol en het gebruik daarvan voor het web:
de belangrijkste toepassing van het internet.
Het web vormt steeds met het "user interface" van het internet.
In het volgende hoofdstuk gaan we in op het gebruik van HTTP in het IoT.

In dit gedeelte behandelen we de elementen van het HTTP-protocol,
aan de hand van de browser-webserver interactie.

.. admonition:: begrippen

  client-server, URL, request, response, header, payload, HTML, JSON,
  veiligheid (security), certificaat, IP-adres,

Een samenvatting van de elementen van HTTP protocol:

.. csv-table::
   :header: "Element", "in HTTP", "Voorbeeld"
   :widths: auto
   :align: left

   "Interactie", client-server, browser-webserver
   "Adressering", URL, ``https://infvopedia.nl/iot-app.html``
   "Request-type", http-method, "``GET``, ``POST``, ``PUT`` etc."
   "Medadata", http-headers, ``Content-Type: text/html``
   "Payload", "HTML, JSON, enz.", ``{"level": 133}``

..
