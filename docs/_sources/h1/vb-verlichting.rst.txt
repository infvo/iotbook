*****************************
Voorbeeld: slimme verlichting
*****************************

Als IoT-voorbeeld gebruiken we een domotica-voorbeeld: verlichting in huis.
We behandelen dit aan de hand van het Philips Hue systeem.

Actuatoren, sensoren en controller
----------------------------------

.. figure:: hue-local.png
    :width: 400px
    :align: center

De actuatoren zijn in dit geval de lampen.
Deze kun je bedienen met drukknoppen en met (bewegings)sensoren.
De controller ("bridge") zorgt voor de koppeling tussen de sensoren en de actuatoren.
De controller heeft geen eigen user interface:
hiervoor gebruik je de app die via het lokale (WiFi) netwerk verbinding maakt met de controller.

De bridge heeft hier nog een andere functie: het is de gateway (koppeling) tussen het ZigBee-netwerk
van de lampen en schakelaars en het lokale netwerk.
In de volgende hoofdstukken komen deze communicatie-aspecten aan de orde.

Aan het internet
----------------

.. figure:: hue-server.png
    :width: 500px
    :align: center

Je kunt met de app de lampen ook op afstand bedienen, via het internet.
Hiervoor maakt de app contact met de hue-server/controller in het publieke internet,
die weer contact maakt met de bridge als lokale controller.

We hebben hier te maken met 3 lagen van controllers:

* de lampen en de schakelaars zijn IoT-knopen, met lokaal sensor(en)/actuator(en),
  een microcontroller, en een radio;
* de bridge is de lokale controller;
* de server in het publieke internet is de globale controller.

Combineren met andere diensten
------------------------------

.. figure:: hue-server-extensions-public.png
    :width: 550px
    :align: center

Een oplossing is pas "slim" als je deze kunt koppelen aan andere diensten
en apparaten.
Je kunt de verlichting bijvoorbeeld koppelen aan oplossingen
voor veiligheid, voor beeld (tv/video) en voor verwarming.
Voor deze "domotica" (huisautomatisering) kun je tegenwoordig
allerlei oplossingen krijgen,
bijvoorbeeld van Google (Google Home en Nest) en Apple (HomeKit).
In deze figuur zie je Alexa (de Amazon assistent met spraakbesturing)
en IFTTT (If This Then That, voor de koppeling aan allerlei andere diensten).

Dit combineren met andere (publieke) diensten heeft voor- en nadelen:
voor het dagelijks gebruik heb je veel meer mogelijkheden.
Maar het maakt je afhankelijk van andere diensten en leveranciers.
Naast de afhankelijkheid van een bepaalde leverancier brengt dit
mogelijk ook extra privacy- en veiligheidsrisico's met zich mee.
Omdat deze diensten erg direct gekoppeld zijn aan je leefomgeving,
zijn die risico's niet verwaarloosbaar.
Overigens zijn dergelijke risico's veel groter met veel goedkopere IoT-producten.

.. admonition:: Opmerking

  De Hue Bridge heeft een web-API (Application Programmer's Interface)
  waarmee je deze vanuit een ander programma kunt besturen.
  In een volgend hoofdstuk gaan we dieper in op web-API's.

Eigen domotica
--------------

.. figure:: hue-server-extensions-private.png
    :width: 550px
    :align: center

Je kunt ook je eigen domotica-oplossingen maken,
bijvoorbeeld met behulp van een Raspberry Pi als lokale controller,
met open source domotica-software,
die via een MQTT-broker in het publieke internet met andere diensten
verbonden kan worden.
Enkele voorbeelden van open source voor domotica zijn
OpenHAB (https://www.openhab.org) en
Home Assist (https://www.home-assistant.io).

In de volgende hoofdstukken zullen we de bouwstenen daarvoor behandelen.

Toetsvragen
-----------

.. mchoice:: IoT-020
   :answer_a: gateway (koppeling) tussen het ZigBee-netwerk van de lampen en schakelaars en het lokale netwerk;
   :answer_b: controller voor het verbinden van de lampen en de schakelaars
   :answer_c: versterken van het WiFi-signaal voor de lampen
   :answer_d: verbinding tussen de lampen en de Hue-server
   :correct: a,b,d

   Wat is de functie van de Hue Bridge (meerdere antwoorden mogelijk).

..

.. mchoice:: IoT-021
   :answer_a: verbinding tussen de Bridge en de mobiele app
   :answer_b: verbinding tussen de Bridge en externe diensten
   :answer_c: software-updates voor de Bridge en de lampen
   :answer_d: controller voor het verbinden van de lampen en de schakelaars
   :correct: a,b,c

   Wat is de functie van de Hue server voor het lokale netwerk? (meerdere antwoorden mogelijk)

.. figure:: hue-server-quiz.png
   :width: 500px
   :align: center

.. dragndrop:: IoT-022
   :feedback: Zie de eerdere figuren in dit gedeelte.
   :match_1: Hue-server|||C
   :match_2: Lamp|||A
   :match_3: Hue-bridge|||B
   :match_4: UI-mobiele app|||D

   Plaats de termen bij de juiste letter in de figuur
