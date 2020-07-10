TTN - applications
------------------

.. figure:: TTN-console-application.png
  :width: 800px
  :align: center

  TTN console: application

Opmerking: we gebruiken hieronder de termen “device” en “application” voor de onderdelen
die je in het TTN-console tegenkomt.
“Toepassing” staat voor de toepassing inclusief de onderdelen op externe servers, NodeRed, mobiele apps enz.
In TTN-terminologie heten dit wel de "integrations".

In het TTN console kun je je applications beheren. Per application vind je de volgende onderdelen:

* **application ID**: de naam van de application, als identificatie naar de externe toepassing;
  deze wordt onder andere gebruikt in de MQTT topics van de application.
  Deze naam moet uniek zijn binnen TTN.
  NB: kies een handige naam, deze kun je achteraf niet meer veranderen.
* **application EUI(s)**: de unieke identificatie(s) van de application.
  Deze wordt  in de devices (IoT-knopen) gebruikt als identificatie van de bijbehorende application.
* **devices**: de IoT-knopen die bij de application horen.
  Een device hoort altijd bij ten hoogste één application.
* **data**: de data die door de devices verstuurd wordt (uplink) en naar de devices (downlink)
* **payload format**: de functies voor het (de)coderen van de payload, zie verderop.
* **collaborators**: je kunt anderen toegang geven tot je toepassing;
  daarbij kun je per persoon aangeven welke autorisaties deze heeft.
* **access keys**: de sleutels waarmee een externe toepasssing ("integration") toegang heeft
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

.. rubric:: Access-keys cq. API-keys

Met de access-keys kun je externe toepassingen ("integrations") toegang geven tot de data van deze toepassing.
*Tip*: maak voor elke externe toepassing of gebruiker een aparte access-key aan,
dan kun je die ook weer afzonderlijk intrekken, mocht dat nodig zijn (bij misbruik e.d.).
(Opmerking: de V3-software gebruikt in plaats van Access key de term API-key.)

Als je in NodeRed de data van een TTN-toepassing wilt gebruiken,
dan heb je nodig: (i) de Application-ID; (ii) een Access-key.
