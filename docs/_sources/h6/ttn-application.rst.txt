TTN - applications
------------------

.. figure:: TTN-console-application.png
  :width: 800px
  :align: center

  TTN console: application

Opmerking: we gebruiken hieronder de termen “device” en “application” voor de onderdelen
die je in het TTN-console tegenkomt.
“Toepassing” staat voor de toepassing inclusief de onderdelen op externe servers, NodeRed, mobiele apps enz.

In het TTN console kun je je applications beheren. Per application vind je de volgende onderdelen:

* application ID: de naam van de application, als identificatie naar de externe toepassing;
  deze wordt onder andere gebruikt in de MQTT topics van de application.
  NB: kies een handige naam, deze kun je achteraf niet meer veranderen.
* application EUI(s): de unieke identificatie(s) van de application.
  Deze wordt  in de devices (IoT-knopen) gebruikt als identificatie van de bijbehorende application.
* devices: de IoT-knopen die bij de application horen.
  Een device hoort altijd bij ten hoogste één application.
* data: de data die door de devices verstuurd wordt (uplink) en naar de devices (downlink)
* payload format: zie verderop.

* collaborators: je kunt anderen toegang geven tot je toepassing; daarbij kun je per persoon aangeven welke autorisaties deze heeft.
* access keys: de sleutels die gebruikt worden voor het opzetten van een MQTT data-verbinding.

(Voor het gebruik van de application-data via een access key hoef je niet als collaborator geautoriseerd te zijn.)

Een gebruiker die een access key heeft hoeft niet noodza

* aanmaken van een application
* identificeren van een application
* communiceren met een application - met NodeRed (of andere application-servers)

Opmerking: zoals gezegd kan een application meerdere EUIs hebben.
Dit gebruik je bijvoorbeeld voor een IoT-device waarvan alle parameters vooraf ingesteld zijn,
zoals de Dragino GPS-tracker.
Je kunt de application EUI van het device dan toevoegen aan de application.

Scenario: gebruik X toegang geven tot de data van je toepassing.

* maak een access-key aan voor X, en geef deze door aan X.

X kan nu in NodeRed een TTN-node of een MQTT-node configureren met deze access key als password.
Tip: als je per externe gebruiker een aparte access-key aanmaakt,
dan kun je de toegangsrechten ook eenvoudig per gebruiker herroepen.

(Opmerking: de V3-software gebruikt in plaats van access key de term API-key.)
