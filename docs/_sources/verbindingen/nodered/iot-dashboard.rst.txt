Een IoT-dashboard
-----------------

Als voorbeeld van een complete flow gebruiken we een dashboard voor een IoT-knoop.
Dit dashboard maakt de sensorwaarden van de IoT-knoop zichtbaar;
je kunt hiermee ook de LED van de IoT-knoop aansturen.

.. figure:: IoT-nodered-dashboard-flow-1.png
   :width: 700 px
   :align: center

De dashboard-flow vind je via: :download:`./dashboard-flow-1.json`,
(Of via `GitHub gist <https://gist.github.com/eelcodijkstra/1e6c2b4737b3cca7aa68efa26dc179f3>`_.)

  Deze flow is in het JSON-formaat; later in het materiaal komt JSON uitgebreider aan bod.

.. rubric:: Opdracht A

* importeer de dashboard-flow:

  * selecteer de flow-tekst (in JSON-formaat), en kopieer deze naar het Clipboard
    (via "Copy" van het operating system).
  * in NodeRed: selecteer hamburgenmenu->Import->Clipboard
  * "Paste" de inhoud van het Clipboard in het input-venster.
  * "Import"
  * je krijgt nu een nieuwe flow met als naam (in de tab): My dashboard

* selecteer in deze flow de MQTT-input-node, en configureer deze (double-click):

  * selecteer bij "Server": ``infvopedia.nl`` (met port 1883)
  * als deze niet beschikbaar is: selecteer bij "Server": ``Add new mqtt-broker...``

    * klik op het potloodsymbool rechts daarvan
    * vul in bij "Server": ``infvopedia.nl`` (met port 1883)
    * klik op "Add"

  * klik op het potloodsymbool rechts van "infvopedia.nl";
    je krijgt nu de broker-instellingen te zien;
  * selecteer de tab "Security", en **vul de opgegeven gebruikersnaam en wachtwoord in**
  * klik "Update" (voor de Server-instellingen)
  * klik "Done" (voor de instellingen van de MQTT-input-node)

* configureer de MQTT-output-node (selecteer en double-click):

  * selecteer bij "Server": ``infvopedia.nl:1883``
  * "Done"

* je krijgt nu het dashboard van de node ``fe05``.

  * in de debug-tab worden de mqtt-berichten getoond
  * het dashboard krijg je via: dasboard-tab, hokje-met-pijltje rechts boven.
  * het dashboard komt dan in een apart browser-venster.

* voor het aanpassen aan een eigen node:

  * configureer de MQTT-input-node, en verander het "topic":
  * vervang ``e0f1`` door de ID van je eigen node
  * "Done"

* idem, voor de MQTT-output-node.

.. rubric:: Opdracht B

Bekijk de debug-output in NodeRed voor deze flow.
Tip: in de debug-tab selecteer je "current flow",
je krijgt dan alleen de debug-output van deze flow.

* kun je in de berichten de ID van de IoT-knoop terugvinden?
  Wat is de naam van dit veld?
* kun je in de berichten, in de "payload", de sensorwaarde voor de temperatuur terugvinden?

  * hoe wordt die waarde aangepast tot de waarde die je in het dashboard ziet?
  * wat is het pad in het payload-object voor deze temperatuur-waarde (welke veldselectie en indicering is nodig)?
  * controleer dit door de programmatekst in de function-node "temperature" te bekijken.

* beantwoord dezelfde vragen voor de luchtdruk (barometer).
* (lastig) waarom worden de sensorwaarden als een gehele getal weergegeven?
* (lastig) waarom worden de sensorwaarden zo "ingepakt",
  waardoor je array-indicering e.d. nodig hebt?
  (Denk aan een situatie waarbij een IoT-knoop meerdere temperatuursensoren heeft.)
