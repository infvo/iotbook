Payload (**)
------------

Elk van de protocollen in de stack heeft een eigen dataformaat:
dit bevat *header*-gegevens voor het protocol zelf, bijvoorbeeld voor de adressering,
en de *payload*: de data die via dat protocol getransporteerd worden.

.. csv-table:: Protocol- en payload-formaten
  :header: "Protocol", "Adres", "Dataformaat", "Payload"
  :widths: 10, 10, 20, 20

  "HTTP", "URL-pad",   "HTTP-request/response", "HTML-document (etc.)"
  "TCP",  "TCP-poort", "TCP segment, met bytestroom data", "HTTP-request/response"
  "IP",   "IP-adres",  "IP-pakket", "TCP-segment"
  "WiFi Ethernet", "MAC-adres", "WiFi/Ethernet frame", "IP-pakket"

Omdat de payload van een IP-pakket voor verschillende protocollen gebruikt kan worden,
bevat een IP-pakket een veld om aan te geven wat het gebruikte payload-protocol is.
De ontvanger weet dan op welke manier deze payload geïnterpreteerd moet worden.
Een vergelijkbaar principe kom je op elk niveau in de protocolstack tegen.
