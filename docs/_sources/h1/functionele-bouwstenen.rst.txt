Functionele bouwstenen
======================

We hebben bij het voorbeeld van de watersproeier-voorbeeld kennis gemaakt met de functionele IoT-keten:


.. figure:: IoT-node-controller-controller.png
    :width: 600px
    :align: center

    Functionele IoT-keten

.. dummy

In deze functionele IoT-keten:

* koppelt de *IoT-knoop* de fysieke wereld aan de virtuele/logische wereld, met sensoren en actuatoren;
* zorgen de controllers voor het meten en besturen van de sensoren en actuatoren, mede op basis van input van de diensten (services);
* verwerken de diensten (services) de data van de sensoren; deze stellen de data en kennis van elders beschikbaar aan de controllers;
* zorgt de *web-app* voor de interactie met de gebruikers.

We gaan hier in op de verschillende bouwstenen van deze IoT-keten.
In de volgende hoofdstukken behandelen we de communicatie tussen deze functionele bouwstenen.

IoT-knoop
---------

Een *IoT-knoop* koppelt de fysieke wereld aan de virtuele wereld.
Zo'n knoop omvat gewoonlijk:

* sensoren, om in de fysieke wereld te meten;
* actuatoren, om in de fysieke wereld te sturen;
* een microcontroller ("computer op een chip") als controller, voor de besturing van de IoT-knoop;
* communicatie, vaak draadloos (radioverbinding);
* energie, voor draadloze knopen in de vorm van een batterij, soms aangevuld met *energy harvesting*.

.. figure:: IoT-knoop-0.png
  :width: 400px
  :align: center

  Een IoT-knoop

In de voorbeelden gebruiken we een IoT-knoop met de volgende sensoren/actuatoren:

* een of twee LEDs - als actuatoren
* twee drukknoppen - als "event" sensoren
* sensoren voor: temperatuur, luchtdruk en lichtniveau

Voor de draadloze communicatie hebben we de keuze uit verschillende radio's (WiFi, RFM69, LoRa).
De eisen die het "ding" en de omgeving daarvan stellen aan bitrate, bereik, mobiliteit en energieverbruik bepalen de keuze voor de radio.

Voor de microcontroller voor de besturing hebben we ook meerdere alternatieven, zoals Atmega AVR (Arduino), ESP8266, ESP32, ARM.
De keuze voor de microcontroller hangt meer af van de eigen voorkeur en omstandigheden dan van de eisen van de toepassing.
We gaan hier niet verder in op deze keuzemogelijkheden.

.. figure:: swing-m0-rfm69-accu-1.jpg
  :width: 500px
  :align: center

  IoT-knoop: sensoren, microcontroller, radio, batterij

De figuur hierboven geeft de verschillende onderdelen weer van een IoT-knoop "kit":
sensoren/actuatoren, controller, radio, batterij.
In de praktijk worden deze onderdelen meestal geïntegreerd tot een kleiner systeem.

Controller: NodeRed
-------------------

.. figure:: Nodered-chat-flow.png
   :width: 500 px
   :align: center

   NodeRed Chat flow

De controllers coördineren de monitoring en sturing in de fysieke omgeving, de gebruikersinterface en de cloud-diensten.

Als software voor de lokale of globale controller gebruiken we NodeRed.
IoT-toepassingen combineren vaak data uit verschillende bronnen:
vanuit IoT-knopen, maar ook uit databases of andere datastromen.
Om deze ruwe data bruikbaar te maken voor de gebruikerstoepassing,
kun je deze eerst door externe diensten (Data Science, Artificial Intelligence, enz.) laten bewerken.
Deze databronnen, diensten en gebruikerstoepassingen gebruiken verschillende protocollen en formaten.
Met NodeRed knoop je deze verschillende onderdelen samen op een grafische manier.
Daar voeg je je eigen besturing aan toe.
Een NodeRed-server is in onze voorbeelden vrijwel altijd onderdeel van de IoT-keten.

Diensten
--------

Een IoT-toepassing wordt "slim" door het combineren van de IoT-data van de IoT-knopen
in combinatie met de diensten "in the cloud".
Via deze diensten komen allerlei andere gegevens beschikbaar voor de IoT-knopen.
In het voorbeeld van de watersproeier kun je met behulp van de weersverwachting beter sproeien.
Deze diensten verwerken ook de IoT-data en combineren deze met externe gegevens:
daarmee worden deze diensten ook steeds slimmer.

App: dashboard
--------------

.. figure:: Nodered-dashboard-display-0.png
   :width: 500 px
   :align: center

   Web-app voorbeeld: dashboard

Uiteindelijk komen de IoT-data terecht bij een webtoepassing (web-app),
als gebruikersinterface in de IoT-keten.
Een voorbeeld van een eenvoudige toepassing is een *dashboard*, met een samenvatting van de gegevens van de IoT-knopen.

In onze voorbeeld-toepassing werken we met een eenvoudig dashboard met de gegevens van één IoT-knoop.
Dit dashboard maken we met NodeRed: we gebruiken deze dan (ook) als webserver.
Via dit dashboard kunnen we ook de actuators van de IoT-knoop bedienen.

Toetsvragen
-----------

.. dragndrop:: IoT-049
   :feedback: Zie de eerdere figuren in dit gedeelte.
   :match_1: controller|||coördineert meten, sturen, gebruikers (UI) en diensten
   :match_2: IoT-knoop|||meet en/of stuurt in de fysieke omgeving
   :match_3: app (UI)|||verzorgt interface met gebruiker
   :match_4: cloud-dienst|||combineert gegevens uit de fysieke omgeving met andere gegevens voor modellering

   Plaats elke term bij de best passende omschrijving

.. figure:: IoT-node-controller-controller-quiz.png
   :width: 600px
   :align: center

   Functionele IoT-keten

..

.. dragndrop:: IoT-050
   :feedback: Zie de eerdere figuren in dit gedeelte.
   :match_1: lokale controller|||B
   :match_2: IoT-knoop|||A
   :match_3: globale controller|||C
   :match_4: app|||D
..   :match_5: cloud-dienst|||E   ... fout in Runestone....

   Plaats de termen bij de juiste letter in de figuur
