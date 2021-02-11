************************
Voorbeeld: watersproeier
************************

Als voorbeeld van een IoT-toepassingen kijken we naar het besproeien van een sportveld.
We beginnen met een eenvoudige, lokale oplossing.
Deze breiden we stapsgewijs uit naar een "slimme" oplossing door steeds meer aspecten van het internet of things te gebruiken.

.. figure:: iot-watersproeier.png
  :width: 600px
  :align: center

Actuator en controller
----------------------

.. figure:: actuator-waterklep.png
  :width: 200px
  :align: center

  Actuator: bestuurbare waterklep. Onderaan de vloeistof-aansluitingen, boven de elektrische aansluitingen voor de besturing

De eerste oplossing is een automatische sproei-installatie.
Deze bestaat uit sproeiers met bestuurbare kleppen (*actuatoren*) en een computer voor de besturing.
Een dergelijke besturingscomputer noemen we een *controller*.
De eenvoudigste automatische besturing is op basis van tijd, bijvoorbeeld:
besproei de komende week van 22:00 uur tot 4:00 uur.

.. figure:: actuator-controller.png
  :width: 300px
  :align: center

Met deze oplossing kunnen we sproeien op momenten dat dit het meeste zin heeft,
zonder dat we er zelf bij hoeven te zijn.

.. admonition:: Wat is een actuator?

  Een actuator zet informatie om in een fysiek verschijnsel,
  bijvoorbeeld beweging, geluid of licht.
  Voorbeelden van actuatoren zijn: (servo)motor, relais, klep, luidspreker,
  lamp.
  Actuatoren gebruik je in het internet of things voor het *besturen* van "dingen".

.. admonition:: Wat is een controller?

  Een controller is een besturingscomputer.
  In een IoT-apparaat vind je vaak een  *microcontroller*:
  een complete computer op een chip,
  met analoge en digitale aansluitingen voor sensoren en actuatoren.
  Voorbeeld: een *micro:bit* is een bordje met een ARM-microcontroller,
  een aantal sensoren (drukknoppen, temperatuursensor, 3D-versnellingsopnemer,
  kompas), en actuatoren (led-matrix), en een radio.
  Verderop in een IoT-toepassing gebruik je controllers om de verschillende
  functionele elementen, IoT-apparaten tot internetdiensten te verbinden,
  en te combineren met allerlei regels voor de besturing.
  Een voorbeeld hiervan is een NodeRed-server.

Sensoren
--------

.. figure:: sensor-bodemvochtigheid.png
  :width: 250px
  :align: center

  Capacitatieve bodemvochtigheidssensor

Deze eerste  oplossing is nog niet optimaal.
Een nadeel is dat er volgens dit schema altijd gesproeid wordt - ook als de grond al nat is van de regen.
Dit betekent op z'n minst een verspilling van water;
bovendien kan  het veld hierdoor te drassig worden, wat ook niet de bedoeling is.

.. figure:: actuator-sensor-controller.png
  :width: 300px
  :align: center

We kunnen deze problemen voorkomen door (lokale) *sensoren* te gebruiken,
om de bodemvochtigheid te meten, om te meten of het regent,
en bijvoorbeeld om de luchtvochtigheid en de temperatuur te meten.
Hiermee kunnen we al zuiniger met water omspringen.

.. admonition:: Wat is een sensor?

  Een sensor zet een fysiek verschijnsel om in informatie.
  Voorbeelden van sensoren zijn: microfoon (voor geluid), temperatuursensor,
  camera (beeld), lichtsensor, vernellingsopnemer,
  GPS-ontvanger (positie), hall-sensor (magnetisme), gassensoren, enz.

  Een fysiek verschijnsel kan vaak door verschillende sensoren waargenomen worden.
  De aanwezigheid van een persoon kun je bijvoorbeeld meten via temperatuur,
  gewicht, geluid, beeld, gasconcentraties, enz.

Aan het internet
----------------

.. figure:: controller-internet.png
  :width: 500px
  :align: center

Als volgende stap *verbinden we de controller met het internet*.
Hiermee kunnen we de installatie *op afstand bedienen*, via een app,
waarin we ook in een dashboard de gegevens van de sensoren kunnen bekijken.

"Slimme" diensten
-----------------

.. figure:: controller-diensten.png
  :width: 500px
  :align: center

Als de controller verbonden is aan het internet,
kunnen we bij de besturing ook gebruik maken van *diensten elders in het internet*,
zoals bijvoorbeeld de weersverwachting:
het geen zin om te sproeien als er regen verwacht wordt.
Op deze manier kunnen we nog meer water besparen.

Door gebruik te maken van de gegevens van de sensoren over langere tijd,
en door deze te combineren met gegevens van sproei-installaties elders,
kunnen we het algoritme voor het besproeien steeds verder optimaliseren.
Dit is een voorbeeld van het combineren van het Internet of Things met Data Science (Big Data).

Uiteindelijk wil je een sproeisysteem dat optimaal gebruik maakt van de omstandigheden.
Je wilt daarmee het gras zo laten groeien dat het goed gebruik maakt van het water in de bodem -
bijvoorbeeld door voldoend lange wortels te ontwikkelen.
Dat betekent dat je niet altijd moet sproeien als alleen de bovenste laag van de bodem droog is.
Hiervoor is kennis nodig van de manier waarop gras groeit, en van de lokale bodem- en weersomstandigheden.
Externe diensten spelen daarvoor een belangrijke rol.

Meerdere controllers
--------------------

.. figure:: IoT-node-controller-controller.png
    :width: 600px
    :align: center

Vaak heeft het zin om controllers op meerdere niveaus te gebruiken,
bijvoorbeeld een (micro)controller direct bij de sensoren/actuatoren in een *IoT-knoop*,
een controller in de buurt van de "dingen" waaraan je meet en stuurt,
en een controller die bereikbaar is in het publieke internet.

De IoT-knoop-controller en de lokale controller zorgen voor lokale autonomie en (daardoor) grotere betrouwbaarheid,
voor snelle beslissingen (door lage latency vanwege de kleine afstand),
verminderen de druk op de communicatie met en het rekenwerk in de *cloud*,
en maken een betere beveiliging mogelijk.
Omdat je het rekenwerk in de lokale controllers kunt zien als een lokaal verlengstuk van de *cloud* heet dit wel *fog computing*.

De globale controller zorgt voor de bereikbaarheid in het internet,
en voor de koppeling met diensten elders.

Dit gebruik van meerdere controllers is een voorbeeld van *distributie* van functionaliteit in een netwerk.

.. admonition:: Wat is *lokale autonomie*?

  Een autonoom systeem kan zelfstandig functioneren, zonder ingrepen van buiten.
  Voorbeelden van autonome systemen zijn: robots, zelfrijdende auto's, CV met thermostaat, enz.
  Met *lokale autonomie* bedoelen we hier dat het lokale systeem zonder verbinding met de buitenwereld zelfstandig kan blijven functioneren;
  maar door het ontbreken van globale informatie is het resultaat mogelijk minder optimaal.
  Met andere woorden: ook als de internetverbinding wegvalt, blijft het systeem functioneren,
  maar minder "slim" .

Samenvatting
------------

Samenvattend zien we de volgende stappen:

1. automatisch besturen van actuatoren met een controller;
2. aansluiten van sensoren op de controller, om een slimmere besturing mogelijk te maken;
3. aansluiten van de controller op het internet, voor bewaken (monitoring) en besturen op afstand - via een app;
4. gebruik van diensten in het internet om tot een "slimme oplossing" te komen.

Elke volgende stap helpt om meer water te besparen en om een beter sproei- en groeiresultaat te krijgen.
De eerste stappen zijn voorbeelden van traditionele lokale automatisering.
De stappen 3 en 4 zijn voorbeelden van het internet of things:
de verbinding met het internet geeft veel extra mogelijkheden.

Toetsvragen
-----------


.. mchoice:: vraag-VBW-1
   :answer_a: Controller
   :answer_b: IoT-knoop
   :answer_c: Sensor
   :answer_d: Actuator
   :correct: c
   :feedback_a: Met een controller bestuur je een IoT-toepassing
   :feedback_b: Een IoT-knoop kan sensoren bevatten (en actuatoren)
   :feedback_c: Goed!
   :feedback_d: Met een <em>actuator</em> verander je een fysische grootheid

   Hoe heet een opnemer om een fysische grootheid te meten, bijvoorbeeld de temperatuur?

..

.. mchoice:: vraag1-VBW-2
   :answer_a: een controller bestuurt de sensoren en actuatoren bij het "ding"
   :answer_b: een IoT-knoop bevat altijd sensoren en actuatoren
   :answer_c: een IoT-knoop bevat altijd een controller
   :answer_d: een IoT-knoop is altijd draadloos verbonden aan het internet
   :correct: a, c
   :feedback_a: Ja.
   :feedback_b: Een IoT-knoop kan ook alleen sensoren of actuatoren bevatten.
   :feedback_c: Ja.
   :feedback_d: Een IoT-knoop kan ook bedraad zijn

   Welke van de onderstaande uitspraken is waar?

..


.. dragndrop:: vraag1-VBW-3
  :feedback: Zie: xxx
  :match_1: Controller ||| Besturingscomputer
  :match_2: Sensor     ||| Meet een fysische grootheid
  :match_3: Gateway    ||| Verbindt twee netwerken

  Plaats de termen bij hun beschrijving.

..

.. mchoice:: vraag-VBW-4
  :answer_a: drukknop
  :answer_b: relais
  :answer_c: barometer
  :answer_d: klep
  :correct: b,d
  :feedback_a: Een drukknop zet beweging om in informatie (sensor)
  :feedback_b: Een relais is een elektrische schakelaar bestuurd door informatie (actuator)
  :feedback_c: Een barometer zet luchtdruk om in informatie (sensor)
  :feedback_d: Een klep zet informatie om in beweging: open/dicht (actuator)

  Welke van de onderstaande apparaten zijn actuatoren?

..

.. mchoice:: vraag-VBW-5
  :answer_a: microfoon
  :answer_b: luidspreker
  :answer_c: controller
  :answer_d: GPS-ontvanger
  :answer_e: servomotor
  :correct: a,d
  :feedback_a: Een microfoon zet geluid om in informatie (sensor)
  :feedback_b: Een luidspreker zet informatie om in geluid (actuator)
  :feedback_c: Een controller is een besturingscomputer (geen sensor of actuator)
  :feedback_d: Een GPS-ontvanger zet een positie om in informatie (sensor)
  :feedback_e: Een servomotor zet informatie om in een hoekverdraaiing (actuator)

  Welke van de onderstaande apparaten zijn sensoren?

..

.. mchoice:: vraag-VBW-6
  :answer_a: Controller
  :answer_b: IoT-knoop
  :answer_c: Sensor
  :answer_d: Actuator
  :correct: c
  :feedback_a: Met een controller bestuur je een IoT-toepassing
  :feedback_b: Een IoT-knoop kan sensoren bevatten (en actuatoren)
  :feedback_c: Goed!
  :feedback_d: Met een <em>actuator</em> verander je een fysische grootheid

  Wat zet een fysisch verschijnsel om in informatie?
