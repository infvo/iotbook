Toetsvragen
-----------


Vraag: waarom heb je een server in het publieke internet, zoals een MQTT-broker,
nodig om vanuit een app overal te kunnen communiceren met de IoT-knopen thuis?

- de lokale gateway (router/firewall) staat geen directe communicatie van buiten naar het lokale netwerk toe;
- de afstand tussen de app en de IoT-knopen kan te groot zijn om deze zonder een dergelijke tussenstap te overbruggen;
- het formaat van de berichten van de IoT-knopen is niet geschikt voor de app op je smartphone;
- (vergroot de snelheid; vergroot de veiligheid?)
