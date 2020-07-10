Toetsvragen LoRaWan
-------------------

* over de beperkingen van LoRaWan
* uitruilen tussen bitrate en bereik (afstand)
* hoe bereik je een lange batterij-levensduur?
* schaalbaarheid van het LoRaWan-netwerk?
* opmerking: door het toevoegen van meer gateways, wordt de bitrate groter,
  en kunnen er meer nodes in een "cell".
* nadeel van long range: interferentie tussen de verschillende nodes.
  deze wordt kleiner naarmate de berichten korter worden, zie het vorige punt.
* downlink-berichten: waarom timing bepaald door IoT-apparaat (IoT-knoop)?
* welke toepassingen zijn wel/niet geschikt voor LoRa(Wan)?

Voor een LoRaWan IoT-knoop (class A) bepaalt de IoT-knoop wanneer de gateway
een downlink-bericht kan versturen, nl. vlak na het ontvangen van een uplink-bericht.
Wat is het voordeel van deze aanpak?

* De IoT-knoop hoeft alleen "aan" te zijn voor het versturen van een uplink-bericht
  plus een klein ontvangstvenster;
  de rest van de tijd kan de IoT-knoop uit staan, om de batterij te sparen.
* De gateway weet dan dat de IoT-knoop in de buurt is,
  en verspilt geen energie door onnodig berichten te versturen.
* Dit maakt de kans dat er andere IoT-knopen op hetzelfde moment een bericht versturen kleiner.

Voor een LoRaWan IoT-knoop (class A) bepaalt de IoT-knoop wanneer de gateway
een downlink-bericht kan versturen, nl. vlak na het ontvangen van een uplink-bericht.
Wat is het nadeel van deze aanpak?

* Het moment dat de IoT-knoop het bericht ontvangt is onbepaald:
  de vertraging (latency) tussen het versturen van het bericht vanuit de toepassing
  en het ontvangen van het bericht door de IoT-knoop kan willekeurig groot worden.
*

Welke invloed heeft het toevoegen van een extra gateway in een LoRaWan-netwerk?

* de knopen in de buurt komen dichter bij de dichtsbijzijnde LoRaWan-gateway,
  waardoor ze met kortere berichten kunnen volstaan (lagere spreidingsfactor);
* kortere berichten betekent dat er meer knopen in het netwerk passen
  zonder risico op botsende berichten (collisions);
*

De spreidingsfactor (SF) in LoRa is een maat voor de duur van de afzonderlijke bits
in een radio-bericht - en daarmee voor de energie die voor het versturen van een bit gebruikt wordt.
Elke volgende SF-waarde, bijvoorbeeld van SF8 naar SF9, betekent een verdubbeling van deze duur.
SF12 is de hoogste spreidingsfactor, met de meeste energie per bit - en daarmee het grootste bereik.
Een SF12-bericht duurt echter wel 32 maal zo lang als een SF7-bericht met dezelfde payload.
Waarom is het zinvol om berichten met de kleinst mogelijke SF te versturen,
in plaats van altijd de hoogste te gebruiken? (Meerdere antwoorden mogelijk.)

* Een SF12-bericht gebruikt 32 maal zoveel energie als een SF7-bericht,
  waardoor de batterij van de IoT-knoop sneller uitgeput raakt;
* De periode dan een IoT-knoop niet mag zenden vanwege de 1%-regel is
  voor het SF12-bericht veel groter dan voor het SF7-bericht;
* Door de kortere SF7-berichten is er minder kans op botsingen (collisions) met berichten van andere knopen.
* Door de kortere SF7-berichten zijn er meer knopen bij een gateway mogelijk.

(Vraag: moet een gateway met dezelfde bitrate/SF antwoorden als de IoT-knoop?
Nee, dat is niet nodig. De berichten dat de knoop de SF kan (moet?) terugbrengen zijn in een beter passende SF.)
