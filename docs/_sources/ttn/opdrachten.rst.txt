Opdrachten
==========

.. admonition:: Wat heb je nodig?

  * een (gratis) TTN-account
  * toegang tot een bestaande application (opdracht 1)
  * een LoRaWan-device (opdracht 2), met
  * een TTN-gateway in de buurt

* raadplegen van TTN console
* verbinden van een device in een application
* bestuderen van de dekking en het bereik van TTN

Opdracht 1. TTN Console
-----------------------

In deze opdracht maak je kennis met het TTN console,
en de verschillende onderdelen van een toepassing.

Je hebt voor deze opdracht toegang tot een bestaande application nodig (via je docent).

* log in bij TTN, en selecteer rechtsboven "Console" en dan "Applications".
* selecteer de bestaande application.
* welke application EUIs zijn er? (een application kan meerdere EUIs hebben).
* welke devices zijn gekoppeld aan deze application?
* genereer voor je eigen gebruik een API-key;
  gebruik je eigen naam voor die key om deze van de andere keys te onderscheiden.

Een volgende stap is het koppelen van deze toepassing aan NodeRed.
Maak in NodeRed een MQTT-node aan, en configureer deze als volgt:

* server (broker):
* username: application-ID
* password: je access key voor de application

Als topic gebruik je  
