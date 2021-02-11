HTTP in de protocolstack
------------------------

.. figure:: HTTP-IP-stack.png
   :width: 700 px
   :align: center

   Webserver protocolstack

De protocolstack voor de webserver-keten bevat de volgende elementen, vanaf de toepassing gezien:

* web-app
* web: hypertext transfer protocol (HTTP): HTML-documenten enz.
* internet: transmission control protocol (TCP): betrouwbare bi-direectionele bytestromen
* internet-protocol (IP): best-effort pakketcommunicatie;
  universeel datatransport, onafhankelijk van hardware en toepassingen
* fysieke (hardware) verbinding: WiFi of Ethernet

De basisprotocollen van het internet, TCP en IP, vormen een logische laag die de toepassingen scheidt van de hardware
(zie *3-lagen model*).

Het HTTP-protocol vind je alleen in de eindapparaten, niet in het netwerk zelf.
Dit is een voorbeeld van het *end-to-end principe* van het internet.
Dit betekent bijvoorbeeld dat wanneer er een nieuwe versie is van het HTTP-protocol,
er geen aanpassingen in het netwerk zelf nodig zijn.

Bovendien kan het verkeer tussen de client en de server "end-to-end" versleuteld worden:
alleen in de client en in de server is de data niet-versleuteld toegankelijk.
Voor deze versleuteling (in het geval van HTTPS) heb je een apart protocol nodig: TLS,
tussen TCP en HTTPS.
