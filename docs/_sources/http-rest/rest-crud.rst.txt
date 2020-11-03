CRUD in een REST API
--------------------

Deze titel is wel een toppunt in afkortingen.
CRUD staat voor: Create, Read, Update, Delete.
Dit zijn de basisoperaties in een database.
Met behulp van een REST API kun je deze opdrachten uitvoeren op een resource,
of op een verzameling resources.

De algemene regels zijn:

* een verzameling gelijksoortige resources geef je in een URL aan als een meervoud,
  bijvoorbeeld: ``/1/cards``, ``/1/lists``, ``/1/boards`` (Trello);
* een element in zo'n verzameling identificeer je meestal door een getal,
  bijvoorbeeld: ``/1/cards/12345`` (algemeen: ``/1/cards/{id}``)
* de velden van een element geef je aan door de naam van het veld,
  bijvoorbeeld: ``/1/cards/12345/name``, ``/1/cards/12345/due``.

De ``POST`` method voor een verzameling gebruik je om een nieuw element in die verzameling aan te maken (Create).
Het element kun je later lezen (Read), aanpassen (Update) of verwijderen (Delete) met een opdracht voor het element zelf.
GET voor Read, PUT voor Update, en DELETE voor Delete.

Samenvattend:

.. csv-table:: CRUD in REST APIs
   :header: "Method", "/items", "/items/{id}", "/items/{id}/{field}"
   :widths: auto
   :align: left

   "GET", Read: set of items, Read: item, Read: item field
   "POST", Create: item, -, -
   "PUT", -, Update: item, Update: item field(*)
   "DELETE", - , Delete: item, -

..

*Opmerking* Voor het veranderen van de waarde van één of meerdere velden
wordt vaak een PUT gebruikt met alleen de veranderde velden in een JSON-object.

*Opmerking* Soms wordt de http-method PATCH gebruikt voor een gedeeltelijke update,
in plaats van PUT;
PUT wordt dan gebruikt voor het compleet vervangen van de betreffende resource.

Zie verder:

* https://en.wikipedia.org/wiki/Representational_state_transfer
* https://www.restapitutorial.com
