HTTP methods
============

(figuur?)

Het eerste element van een HTTP-request is een *method-keyword*.
Hiermee geef je aan hoe de server de URL en eventuele extra data moet interpreteren.
De meest gebruikte methods zijn:

* GET - de client vraagt de server om een document ("representatie") voor de URL;
* POST - de client stuurt de server informatie over de URL - bijvoorbeeld de inhoud van een formulier;
* PUT - de client stuurt de server een document voor de URL;
* DELETE - de client verzoekt de server om de URL te verwijderen.
* HEAD - de client vraagt de server om de metadata (headers) voor de URL.

De methods GET en HEAD worden alleen gebruikt om gegevens op te vragen.
Deze zijn niet bedoeld om de toestand bij de server te veranderen.

In een REST-API worden deze methods op een speciale manier gebruikt.

Lees verder:

* https://nl.wikipedia.org/wiki/Hypertext_Transfer_Protocol
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods
