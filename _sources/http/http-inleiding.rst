Inleiding
---------

Hoe werkt het HTTP-protocol, als basis voor het web?
In dit gedeelte behandelen we de elementen van het HTTP-protocol,
aan de hand van de browser en webservers.

.. admonition:: begrippen

  client-server, URL, request, response, header, payload, HTML, JSON,
  idempotent, veilig (safe), veiligheid (security), certificaat, IP-adres,

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
