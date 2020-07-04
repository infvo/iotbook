Configureren via HTTP
---------------------

figuur: protocol-stack bij directe communicatie tussen browser en webserver

figuur: netwerk met alleen de IoT-knoop en een computer - met browser

Sommige IoT-knopen beschikken over een WiFi-radio,
en kunnen als WiFi base-station (access point) functioneren.
Daarmee kun je de knoop configureren of van een software-update te voorzien.
Je moet de IoT-knoop vaak op een speciale manier herstarten om deze in de base-station toestand te brengen.
(Zie de handleiding voor het configureren van de IoT-knopen.)

Als zo’n knoop in de base-station toestand is,
kun je met je computer of smartphone verbinding maken met het netwerk van deze knoop.
Dit netwerk is niet verbonden met de rest van het internet:
alleen de IoT-knoop en je computer zijn in dit netwerk verbonden.

De volgende stap is dat je via de browser van je computer contact maakt met de webserver van de IoT-knoop.
Deze biedt dan één of meer webpagina’s waarmee je de knoop kunt configureren.
Op deze manier kun je bijvoorbeeld de netwerkinstellingen voor het lokale WiFi-netwerk invoeren.
Nadat de IoT-knoop opnieuw opgestart is kan deze via de opgegeven instellingen verbinding maken met het lokale WiFi-netwerk,
en daarmee met het internet.
