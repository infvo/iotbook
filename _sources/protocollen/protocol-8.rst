Adressering
-----------



Alice en Bob zijn beiden verbonden door een netwerk.
Om Bob een bericht te kunnen sturen moet Alice het adres van Bob in het netwerk kennen.
Enkele voorbeelden van netwerken en de bijbehorende adressen:

* telefoonnetwerk: telefoonnummer
* postnetwerk: postadres (straat+nr/postcode/woonplaats)
* email: mailadres

Elk netwerkprotocol heeft een eigen vorm van adressering:

* HTTP: URL - https://invo.nl/betapartners
* MQTT: broker + topic - infvopedia.nl node/1367/sensors
* TCP: IP-adres + poortnummer - 101.92.73.12 : 80
* IP: IP-adres - 101.92.73.12
* WiFi: MAC-adres - 60:f8:1f:b5:09:2c

**Adressering en identificatie**: een adres vervult eigenlijk twee rollen:
(i) identicatie van een element in het netwerk; (ii) adressering,
als hulpmiddel bij het routeren van een bericht of verbinding.
Een MAC-adres is alleen een (wereldwijd) *unieke identificatie* van een apparaat.
Voor een lokaal netwerk is dat voldoende: je hoeft niet te routeren.
Een postadres of IP-adres is een hulpmiddel om te routeren:
eerst naar de plaats cq. het netwerk, dan naar het huisadres of
naar het apparaat in het netwerk.
Merk op dat een MAC-adres aan een apparaat gekoppeld is,
terwijl een postadres of een IP-adres aan een locatie gekoppeld is (plaats of netwerk).
