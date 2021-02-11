Pakketcommunicatie
==================

Bij pakketcommunicatie worden gegevens als afzonderlijke berichten van een beperkt aantal bytes verstuurd.
Een typisch internet-pakket is ongeveer 1,5 kbyte; veel IoT-radio's gebruiken pakketten van enkele tientallen bytes.
Elk bericht wordt volledig geadresseerd en wordt afzonderlijk bezorgd.

Je kunt pakketcommunicatie vergelijken met briefpost: de afzender voorziet de brief van het adres van de bestemming,
en de post levert deze waarschijnlijk binnen niet al te lange tijd af bij de ontvanger.

Voorbeelden van pakketcommunicatie: hardware: Ethernet, WiFi, Bluetooth, LoRa, RFM69, ZigBee, enz;
IP-protocol; UDP-protocol; e-mail; MQTT berichten; HTTP request/response

Zoals je ziet kun je pakketcommunicatie op alle niveaus in een protocolstack gebruiken;
afhankelijk van het niveau spreek je dan bijvoorbeeld over frame (Ethernet),
packet (IP), datagram (UDP), bericht (e-mail, MQTT), request/response (HTTP), enz.
Berichten op hogere niveaus zoals HTTP kunnen overigens erg groot worden.

Enkele eigenschappen van pakketcommunicatie:

* *adressering*: elk pakket bevat het volledige adres van de bestemming;
  het pakket bevat ook het adres van de afzender, waarmee de ontvanger een antwoord terug kan sturen.
* *payload*: de eigenlijke data die in het pakket verstuurd wordt; deze wordt vaak gebruikt in een hoger-niveau protocol;
* *metadata*: typische metadata in een pakket: lengte van de payload, checksum van de payload, protocol voor het verwerken van de payload;
* *checksum*: hiermee kan de ontvanger nagaan of het pakket onbeschadigd aangekomen is;
* *best effort*: pakketcommunicatie is meestal "best effort", net als de post: er kunnen onderweg pakketten verloren raken; de afzender weet niet of een pakket aangekomen is; pakketten kunnen in een andere volgorde aankomen dan ze verstuurd zijn.

Zoals gezegd is pakketcommunicatie meestal *best effort*,
maar je kunt deze betrouwbaar maken door de ontvanger altijd een bericht van ontvangst (ACK) te laten versturen.
In de praktijk wordt dit vaak overgelaten aan de toepassing,
omdat daar bekend is wat de problemen zijn die zoekgeraakte pakketten geven.

Bij pakketcommunicatie gebruikt de afzender de (hardware) verbinding alleen voor de duur van een pakket,
daarna kunnen andere afzenders de verbinding gebruiken.
Eenzelfde verbinding kan zo door veel apparaten gedeeld worden (time-multiplexing).
