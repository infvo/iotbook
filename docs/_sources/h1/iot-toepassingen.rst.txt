****************
IoT-toepassingen
****************

.. bij de inleiding


.. rubric:: Voorbeelden van IoT-toepassingen

Het Internet of Things biedt ontelbare mogelijkheden; veel toepassingen moeten nog bedacht en ontwikkeld worden.
We geven hier eerst nog een uitgewerkt voorbeeld.
Voor de andere toepassingen geven we alleen de verwijzingen naar uitgebreidere beschrijvingen.
Tenslotten geven we een overzicht van de karakteristieken die je bij veel IoT-toepassingen tegenkomt:
welke meerwaarde bieden deze IoT-toepassingen? welke problemen lossen ze op?

Bewaken van bijenkasten
=======================

.. figure:: DBveld.jpg
    :width: 200px
    :align: right

In de bovenstaande voorbeelden is er steeds sprake van besturing (*control*), via actuatoren.
Ook met alleen sensoren voor bewaking (*monitoring*) zijn al veel zinvolle IoT-toepassingen te maken.
Als voorbeeld gebruiken we het bewaken op afstand van een bijenkast.

Een imker (bijenhouder) heeft vaak meerdere bijenkasten, verspreid over een groot gebied.
Het loont de moeite om de activiteit van de bijen op afstand te kunnen bewaken.
De imker kan dan de gezondheid van zijn bijenvolken voortdurend in de gaten houden,
en op tijd ingrijpen als er dingen mis dreigen te gaan.

De stichting `Beep <https://beep.nl>`_ ontwikkelt een open-source systeem voor het bewaken van bijenkasten
en voor het bijhouden van de belangrijkste gegevens in een app.
De gegevens van het automatische meetsysteem combineer je in de app met gegevens van eigen inspecties.
Het automatische meetsysteem stuurt enkele keren per uur de belangrijkste gegevens op via een LoRa (long range) IoT-netwerk.

.. figure:: beep-lora-internet.png
    :width: 500px
    :align: center

Voor een imker zijn bijvoorbeeld de volgende gegevens van belang:

* de buitentemperatuur en de luchtvochtigheid in de omgeving van de kast;
* de temperatuur in de kast (broedtemperatuur);
* het gewicht van de kast: als de bijen de kast verlaten neemt het gewicht af;
  als de bijen terugkomen met nectar neemt het gewicht toe;
* het geluid in de kast.
  Als een bijenvolk door indringers beroofd wordt van de voedselvoorraad,
  kun je dit zien aan de combinatie van gewicht en geluid.

Zie de presentatie hierover: https://www.slideshare.net/martenschoonman/beep-bee-app-overview-presentation-march-2018

Als veel bijenkasten met zo'n systeem uitgerust zijn helpt dat niet alleen de imker,
maar ook het onderzoek naar het gedrag en de gezondheid van bijenvolken.

Voorbeelden van IoT-toepassingen
================================

* domotica (huis-automatisering); voor verwarming (slimme thermostaat, voor beperken van het energieverbruik), tot verlichting (voor beleving en veiligheid) en beveiliging en toegang (slim deurslot, raamdetectoren, bewegingsmelders, camera's).
    * OpenHAB: https://www.openhab.org/
    * Domoticz: https://www.domoticz.com
    * Mozilla Project Things: https://iot.mozilla.org/
    * (e.v.a.)
* Vuilcontainer die meldt wanneer deze (bijna) vol is, zodat deze op tijd geleegd kan worden
    * https://www.pieterbas.nl/omrin-leegt-ondergrondse-containers-efficienter-door-stosag-koppeling/
    * http://www.bwaste.nl/news/techniek-is-er-voor-om-het-de-mens-gemakkelijker-te-makene2809d/
* Smart parking: Parkeerplaats die meldt wanneer deze vrij/bezet is
    * Ongeveer 8-30% procent van het verkeer in de binnenstad bestaat uit "zoeken naar een vrije parkeerplek"
        * http://shoup.bol.ucla.edu/Cruising.pdf
    * http://www.libelium.com/smart-parking-project-in-montpellier-to-relieve-traffic-congestion-and-reduce-car-parking-search/
* Slimme dijk
    * https://www.volkskrant.nl/binnenland/staatssecretaris-opent-slimme-dijk~a963283/
    * https://www.vpdelta.nl/nl/proeftuinen/smart-delta/sensordijk-1
* Connected Car en Smart Roads
    * communicatie tussen weg en auto, en tussen auto's onderling
    * sensoren in weg (infrastructuur) en in auto's
    * https://www.smart-industry.net/iot-smart-roads-paving-the-way/
    * https://medium.com/iotforall/7-connected-car-trends-fueling-the-future-946b05325531
* Smart Cities
    * o.a. verlichting; luchtkwaliteit; verkeer
    * http://www.connectedbaltics.com/wp-content/uploads/2018/02/CBSigfox_UseCase_for_Cities.pdf
* Smart factories/Industrie 4.0 (Duitse term voor "4e industriële revolutie", met o.a. Internet of Things)
    * o.a. predictive maintenance: "just in time" onderhoud;
    * https://www.zdnet.com/article/germanys-vision-for-industrie-4-0-the-revolution-will-be-digitised/
    * http://www.ioti.com/industrial-iot-iiot/how-industry-40-will-change-your-job
* Sensoren op het spoor (ProRail)
    * https://www.spoorpro.nl/innovatie/2018/07/11/prorail-maakt-filmpje-over-internet-of-things-sensoren/
* Smart Grid (slim elektriciteitsnet)
    * o.a. slimme meters, slimme apparaten, hernieuwbare energie (wind, zon)
    * https://en.wikipedia.org/wiki/Smart_grid
* Lokalisatie; IoT voor het bepalen van de positie van "dingen" (of mensen)
    * buitenshuis: combinatie met GPS
    * binnenshuis: beacons (bijv. op basis van BLE)
    * toepassing: deelfietsen (in bijv. Parijs); deelauto's

Waarde van IoT-toepassingen
===========================

Veel IoT-toepassingen helpen je om *betere beslissingen* te nemen:
beslissingen gebaseerd op (complete) data uit de actuele werkelijkheid,
in plaats van op gemiddelden van historische steekproeven.
Bovendien kun je deze beslissingen sneller nemen, en in soms zelfs automatisch.
Zo kun je allerlei vormen van verspilling voorkomen:

* je hoeft halfvolle vuilcontainers niet in de route op te nemen;
* je hoeft niet meer naar een vrije parkeerplaats te zoeken (verspilling van tijd, brandstof en ruimte);
* je hoeft niet meer te zoeken naar een deelfiets: de app wijst je naar de dichtstbijzijnde fiets.
* (zelf aanvullen).

Andere toepassingen maken een *betere aansluiting tussen vraag en aanbod* mogelijk.
Dit is in het bijzonder het geval bij het "smart grid":
het aanbod van hernieuwbare energie varieert sterk (met het weer);
als je slimme apparaten op het juiste moment aan- en uit kunt schakelen,
kun je vraag en aanbod veel beter op elkaar afstemmen.

* licht in huis of op straat hoeft niet te branden als er geen mensen zijn;
* een vriezer kan van te voren "koude" opslaan,
  en hoeft dan niet (zwaar) te werken tijdens piekbelasting van het net;
* een wasmachine hoeft niet op een vast tijdstip te werken - als de was vandaag maar gedaan wordt.

Vragen en opdrachten
====================

.. shortanswer:: H1S2-a
  :optional:

  Werk een IoT-toepassing uit in een kort verslag of presentatie.
  Dit kan een IoT-toepassing zijn uit de lijst hierboven,
  een toepassing die gevonden hebt op het web,
  of een zelf-bedachte toepassing.
  Gebruik hierbij de volgende vragen als inspiratie:

  * Welke problemen lost de toepassing op? Wat zijn de voordelen, en voor wie?
  * Wat zijn de mogelijke nadelen, en voor wie?
  * Van welke (soorten) diensten kan deze toepassing goed gebruik maken?
  * Welke diensten kunnen de data van deze toepassing goed gebruiken?
  * Uit welke onderdelen bestaat het gebruikersinterface/de "app"?
  * Wat zijn de real-time eisen van de toepassing? Wat zijn de maximale vertragingen?
  * Welke eisen worden gesteld aan de betrouwbaarheid? veiligheid? privacy?
  * Hoeveel data gebruikt de toepassing van de IoT-knopen
    (bijvoorbeeld: 1 temperatuurmeting/5 minuten; of: real-time video streaming)?
  * Welke eisen stelt de toepassing aan de mobiliteit van de IoT-knopen?
    Moeten deze draadloos zijn? Welk bereik moet een radio voor de verbinding met deze knopen hebben?

  Geef in het venster de link naar een document met de uitwerking.
