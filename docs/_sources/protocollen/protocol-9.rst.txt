Metadata
--------

Metadata is "data over data".
Metadata in een protocol bevat gegevens over het protocol of over de payload.
Voorbeelden: adres van bestemming, adres van afzender, lengte van de payload,
checksum van de payload, protocol van de payload.

Soms kan een gebruiker naast de payload ook metadata versturen,
als onderdeel van het toepassingsprotocol.
Een voorbeeld hiervan zijn de HTTP-headers waarin bijvoorbeeld cookies meegegeven worden,
of gegevens over de afzender.

In de huidige versie van MQTT kun je als gebruiker geen metadata meegeven.
De volgende versie (v5) biedt deze mogelijkheid wel, in de vorm van headers (als bij HTTP).

De metadata van het LoRaWan-protocol bevat onder andere een frame counter,
waarmee je kunt controleren of er een bericht gemist is;
en een poortnummer, waarmee je verschillende soorten payload kunt onderscheiden.
