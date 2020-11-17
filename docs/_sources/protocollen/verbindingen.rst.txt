Verbindingsgerichte communicatie
================================

Bij verbindingsgerichte communicatie wordt voor de eigenlijke communicatie kan beginnen
een verbinding gemaakt door het hele netwerk.

Denk bijvoorbeeld aan de telefoon:
voordat het gesprek kan beginnen wordt een verbinding gemaakt tussen de betrokken toestellen.
Bij de analoge telefonie werd hierbij een hardwareverbinding gemaakt,
door de draden in het netwerk te verbinden via grote schakelkasten in centrales.
Maar je kunt ook "virtuele verbindingen" hebben: voor de gebruiker lijkt dit een verbinding,
maar deze werkt op basis van onderliggende pakketcommunicatie.

Voorbeelden van verbindingen:

* TCP: het TCP-protocol biedt betrouwbare verbindingen (bytestreams) aan tussen de eindpunten, op basis van de onderliggende pakketcommunicatie van het IP-protocol.
* websockets: dit biedt verbindingen aan in het web, tussen web-clients en web-servers. Hiermee kan een webserver op elk moment een bericht naar een web-clients sturen (in tegenstelling tot HTTP, waar het initiatief altijd bij de client ligt).
* internet-telefonie (Skype, VoIP)

Eigenschappen van verbindingsgerichte communicatie:

* *adressering*: de adressering speelt alleen bij het opzetten van de verbinding een rol.
* *payload*: de payload is een stroom van data (bytestream).
* *metadata*: metadata kan in de datastroom verwerkt worden ("in band"): je hebt dan een ontsnappingsmechanisme nodig (escape); of er wordt een aparte verbinding voor de metadata gebruikt.
* *bi-directioneel*: na het opbouwen werkt een verbinding vaak symmetrisch:  beide deelnemers kunnen als zender optreden.

Verbindingen zijn in het gebruik gemakkelijk, maar voor het netwerk lastig:

* in het geval van een hardware-verbinding worden de resources (bijvoorbeeld datakabel, glasvezel) gedurende de hele duur van de verbinding exclusief aan de verbinding toegewezen; (Dit in tegenstelling tot pakketcommunicatie, waarbij bijvoorbeeld een datakabel alleen voor de duur van een pakket gebruikt wordt.) Het vooraf vastleggen van resources kan wel helpen om de latency laag te houden.
* bij een hardware-verbinding moet je *in het netwerk bijhouden* welke verbindingen er zijn, en welke draden en schakelaars daarvoor gebruikt worden.

Dit zijn belangrijke redenen waarom het basisniveau van het internet pakketcommunicatie gebruikt.
