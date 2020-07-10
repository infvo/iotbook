Metadata
--------


(fig: metadata in TTN console)

De metadata in een LoRaWan bericht bevatten onder andere de volgende gegevens:

* soort bericht (Join; Join accept; unconfirmed data up; confirmed data up; enz.)
* device address (4 bytes)
* frame counter (2 of 4 bytes)
* port number (1..223)

Frame counter: alle uplink-berichten van het device naar het netwerk zijn opeenvolgend genummerd.
De TTN-server houdt per device bij wat de laatst ontvangen framecounter is.
Berichten met een eenzelfde of lagere framecounter worden genegeerd.
Hiermee voorkom je onder andere “replay attacks”,
waarbij de aanvaller een eerder verstuurd LoRa-bericht (met een bepaalde betekenis) opvangt,
bewaart, en nogmaals verstuurt.
Aan de hand van de framecounter kun je in de application ook zien of er berichten verloren zijn geraakt.

Ook de downlink-berichten zijn genummerd, met een eigen frame counter.
Bij een OTAA-Join worden de framecounters automatisch op 0 gezet.

In de application vind je ook per bericht de metadata van de gateways die dit bericht ontvangen hebben.
Per gateway is dat o.a. de identificatie van de gateway, de signaalsterkte bij ontvangst,
de signaal/ruisverhouding, en zo mogelijk de positie.
Deze metadata vind je ook in het JSON-bericht naar de externe toepassings-server, bijvoorbeeld NodeRed.

Opmerking: bij TTN ben je afhankelijk van de eigenaar van de gateway,
wat betreft de nauwkeurigheid van de positie.
Dat betekent dat je niet altijd de positie van de IoT-knoop (device) kunt bepalen uit de gegevens van de gateways.
Op meerdere niveaus in het protocol wordt een checksum gebruikt om te na te gaan of alle bits ongeschonden ontvangen zijn.
Zo weet je zeker dat als je in de applicatie alleen ongeschonden berichten ontvangt.
