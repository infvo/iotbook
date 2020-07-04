Besturen via een API
--------------------

Het gebruik van webpagina’s voor het besturen van een IoT-knoop is bedoeld voor een browser,
met een mens als gebruiker.

Voor het besturen van een IoT-knoop vanuit een ander programma heb je een ander soort interface nodig:
een API (Application Programming Interface).
In principe kun je voor elk API een eigen protocol ontwerpen,
maar het is handig om het HTTP-protocol als basis te gebruiken.
In dat geval kun je profiteren van de hele web-infrastructuur.

Als payload in een web-API wordt meestal JSON gebruikt (in plaats van HTML):
een programma kan dat eenvoudig in een object omzetten en omgekeerd.

Opdracht: gebruik het eenvoudige API via een browser.
Opmerking: dit API voldoet niet aan de regels van het web:
Een GET-request is bedoeld om de huidige toestand te lezen, niet om deze te veranderen.
(Dit gaat bijvoorbeeld mis als een GET-request gecached wordt:
het request komt dan niet bij de IoT-knoop terecht, en de toestand verandert niet.)

Opdracht: gebruik van een REST API met behulp van Postman (of met behulp van NodeRed).
Ook de Philips Hue gebruikt een REST API - voorbeelden?
