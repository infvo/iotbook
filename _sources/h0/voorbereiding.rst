*************
Voorbereiding
*************

De uitwerking van de opdrachten vereist een IoT-infrastructuur.
Als docent moet je deze van te voren beschikbaar maken voor je leerlingen.

Voor de IoT-knopen zijn er verschillende alternatieven:

a. gesimuleerde IoT-knopen en IoT-knopen elders.
b. (a), aangevuld met hardware IoT-knopen:

   1. WiFi-knopen (ESP8266/ESP32) en/of
   2. RFM69-knopen met WiFi gateway en/of
   3. LoRa knopen met LoRa gateway

.. om de list af te sluiten...

Het is niet nodig om alle varianten direct beschikbaar te hebben:
je kunt dit in de loop van de tijd uitbreiden.
Het gebruik van hardware IoT-knopen maakt het materiaal wel (veel) aantrekkelijker voor leerlingen.
Voor de WiFi-knopen en de RFM69-gateway kan het :ref:`schoolnetwerk` een probleem vormen.
Leerlingen kunnen deze meestal zonder problemen thuis gebruiken.

Naast deze IoT-knopen zijn er nog nodig:

1. NodeRed server "in the cloud":
   voor de NodeRed-opdrachten kunnen de leerlingen FRED (fred.sensetecnic.com) gebruiken.
   De gratis versie heeft enkele beperkingen: er is elke 24 uur een herstart nodig;
   het aantal nodes is beperkt tot 50.
   Voor de opdrachten is dat voldoende.
2. MQTT broker "in the cloud":
   als onderdeel van het lesmateriaal is een MQTT-broker "in the cloud" beschikbaar.
   Als docent kun je hiervoor een account aanvragen (mail naar info `at` infvo.nl).

Voor de NodeRed-opdrachten is de gratis FRED-versie voldoende.
Voor een project heb je een NodeRed-server nodig met minder beperkingen.
Hiervoor zijn er verschillende mogelijkheden, vraag hiernaar via een mail naar (info at infvo.nl).

Een uitgebreide uitleg van de verschillende IoT-knopen is te vinden op IoT-1.
Daar zijn de hardware-schema's te vinden, en de gegevens voor het configureren en programmeren.
Daar is ook een uitleg van de software te vinden; de software zelf staat op GitHub.

Gesimuleerde knopen
===================

* docent: vraag account aan op MQTT-broker "in the cloud"; deze kan door alle leerlingen gebruikt worden.
* leerling: vraag (gratis) FRED account aan (fred.sensetecnic.com) voor NodeRed.

Dit gebruik je in combinatie met de volgende software:

* `gesimuleerde knoop <http://infvopedia.nl/iot-node-app.html>`_
* `MQTT-test software (MQT3) <http://infvopedia.nl/mqt3.html>`_

IoT-knopen elders
=================

Via de MQTT-broker en de TTN-server zijn IoT-knopen die elders opgesteld staan toegankelijk.
Je kunt deze knopen aansluiten op een eigen dashboard,
om de sensorgegevens van deze knopen te tonen,
en de LEDs op afstand aansturen.

WiFi knopen
===========

Naast de elementen voor de gesimuleerde knopen:

* docent: eventueel programmeren van de knopen (zie IoT-1);
  dit is meestal niet nodig, omdat de nieuwere versies van de software
  via WiFi te configureren zijn.
* leerling: configureren van de eigen knoop(en); zie: :ref:`Configureren`.
  De docent kan dit ook vooraf doen.

RFM69-knopen
============

Naast de elementen voor de gesimuleerde knopen:

* docent:
    * eventueel programmeren van de knopen (zie IoT-1);
    * configureren van de gateway voor het lokale WiFi-netwerk, zie :ref:`Configureren`.
    * configureren van de RFM69-knopen, zie :ref:`Configureren`;
* leerling: geen speciale voorbereiding, na configuratie is alles direct bruikbaar.


LoRa/TTN-knopen
===============

Naast de elementen voor de gesimuleerde knopen heb je toegang tot TheThingsNetwork nodig.
Bovendien moet je zeker zijn van voldoende dekking van TTN-gateways in de buurt van de school,
of in het gebied waarin je de knopen wilt gebruiken.

  Je kunt een eigen TTN-gateway in of op de school plaatsen; de kosten hiervan zijn ca. 150-500 Euro,
  afhankelijk van plaatsing binnen of buiten (voor groter bereik).

Voorbereiding voor de docent:

* aanmaken van een eigen (gratis) TTN account;
* aanmaken van een TTN-applicatie, met daarin een aantal knopen (devices);
* configureren van de TTN-applicatie voor de LoRaWan-knopen;
  eventueel: programmeren van de LoRa-knopen (zie IoT-1);

Leerlingen moeten toegang hebben tot de TTN-application met de actieve IoT-knopen.
Voor de oefenopdrachten kun je met één TTN-account (gebruikersnaam/wachtwoord) per school of per klas werken.

Voor een project hebben leerlingen een eigen (gratis) TTN-account nodig.

.. _schoolnetwerk:

Schoolnetwerk
=============

Enkele problemen die je kunt hebben met het schoolnetwerk:

* het schoolnetwerk blokkeert de MQTT-poort (1883).
* voor de toegang tot het schoolnetwerk heb je vaak een combinatie van gebruikersnaam en wachtwoord nodig,
  De WiFi-knopen hebben alleen de mogelijkheid om een netwerk-wachtwoord voor het WiFi-netwerk in te stellen.
* het schoolnetwerk blokkeert UDP-verkeer voor LoRaWan/TTN gateway.

Een afdoende manier om deze problemen te omzeilen is het gebruik van een MiFi:
een WiFi-basestation verbonden met het mobiele netwerk.
Dit extra netwerk is alleen nodig voor de IoT-knopen;
de computers/smartphones van de leerlingen werken gewoon via het schoolnetwerk
met de nodige toepassingen en gesimuleerde knopen.

Leskisten
=========

Er wordt gewerkt aan het beschikbaar stellen van leskisten met de benodigde hardware,
voor de IoT-knopen en voor het MiFi-netwerk.
Als docent kun je deze dan lenen/huren, voordat je eventueel eigen hardware koopt.
Informeer naar de mogelijkheden bij info `at` infvo.nl.
