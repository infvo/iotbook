TTN - applications
------------------

.. figure:: images/TTN-console-application.png
  :width: 800px
  :align: center

  TTN console: application

Opmerking: we gebruiken hieronder de termen “device” en “application” voor de onderdelen
die je in de TTN-console tegenkomt.
“Toepassing” staat voor de toepassing inclusief de onderdelen op externe servers, NodeRed, mobiele apps enz.
In TTN-terminologie heten dit wel een "integration".

In het TTN console kun je je applications beheren. Per *application* vind je de volgende onderdelen:

* **application ID**: de naam van de application, als identificatie naar de externe toepassing;
  deze gebruik je onder andere in de MQTT topics van de application.
  Deze naam moet uniek zijn binnen TTN.
  NB: kies een handige naam, deze kun je achteraf niet meer veranderen.
* **application EUI(s)**: de unieke identificatie(s) van de application.
  Deze wordt  in de devices (IoT-knopen) gebruikt als identificatie van de bijbehorende application.
  Deze EUI kun je laten genereren of zelf invullen.
* **devices**: de IoT-knopen die bij de application horen.
  Een device hoort altijd bij precies één application.
* **data**: de data van (uplink) en naar (downlink) de devices.
* **payload format**: de functies voor het (de)coderen van de payload, zie verderop.
* **collaborators**: andere gebruikers die je toegang geeft tot je toepassing;
  daarbij kun je per persoon aangeven welke autorisaties deze heeft.
* **access keys**: de sleutels waarmee een externe toepasssing ("integration") zoals NodeRed toegang heeft
  tot de data van de toepassing (ook wel: API-key).

EUI staat voor Extended Unique Identifier: een wereldwijd unieke identificatie,
als generalisatie van een hardware MAC-adres.
TTN gebruikt 64-bits EUIs.

Enkele inleidende video's:

* https://www.youtube.com/watch?v=JrNjY-pGuno - TTN Console

Een application kan meerdere application-EUIs hebben.
Dit gebruik je bijvoorbeeld voor een IoT-device waarvan alle parameters vooraf ingesteld zijn,
zoals de Dragino GPS-tracker.
Je kunt de application EUI van het device dan toevoegen aan de application.

.. rubric:: Access-keys ofwel API-keys

Met de access-keys geef je externe toepassingen ("integrations") toegang tot de data van deze toepassing.
*Tip*: maak voor elke externe toepassing of gebruiker een aparte access-key aan,
dan kun je die ook weer afzonderlijk intrekken, mocht dat nodig zijn (bij misbruik e.d.).
(Opmerking: de TTN V3-software gebruikt in plaats van Access key de term API-key.)
