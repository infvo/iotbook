***************
TTN-integration
***************

Je kunt  een TTN-application op verschillende manieren beschikbaar koppelen aan
een externe toepassing, zoals NodeRed.

**Access keys.**
Om toegang te krijgen tot de gegevens van een TTN-application heeft zo'n
externe toepassing een API-key nodig, in TTN terminologie: access key.

Het is handig om per externe toepassing of per externe gebruiker
een aparte access key aan te maken:
dan kun je de toegang ook per toepassing of per gebruiker weer intrekken,
of aanpassen als er een veiligheidslek is.

**Integrations.**
Voor de toegang tot de gegevens, in TTN-terminologie "integration",
zijn er verschillende oplossingen mogelijk:

* MQTT
* HTTP
* 

Voor ons gebruik is MQTT de handigste oplossing.


**Koppelen van NodeRed aan een TTN Application**.

Voor deze koppeling maak je eerst in de application een **access key** aan.

Vervolgens maak je in de NodeRed een MQTT-node aan.
Deze configureer je als volgt:

*
