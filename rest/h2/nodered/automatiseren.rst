
Automatiseren
-------------

Via NodeRed kun je allerlei protocollen en toepassingen koppelen.
Je kunt ook allerlei zaken automatiseren, bijvoorbeeld een lamp inschakelen als je thuiskomt.

Een eenvoudige automatisering is het laten knipperen van LED-0 op de IoT-knoop.

Maak een NodeRed-flow waarmee je LED-0 van een (gesimuleerde) IoT-knoop laat knipperen.
Begin met de eenvoudige flow van Opdracht 1, en breid deze later uit met een MQTT-output-node.
Vergeet niet aan het eind van elke opdracht de flow te activeren ("Deploy");
controleer bij elke stap of het werkt.

.. rubric:: Opdracht 3.1

In de eerste stap maak je een flow die elke 5 seconden een bericht genereert,
afwisselend "aan" en "uit".
Je gebruikt hierbij twee inject-nodes;
een inject-node genereert een bericht als je op de knop links klikt.
(Zie de "eerste flow".)
Om het bericht zichtbaar te maken gebruik je een debug-node.

1. Maak de bovenstaande flow met 2 inject-nodes en 1 debug-node.
2. Configureer de bovenste inject-node:

   1. Geef deze node de naam "On";
   2. Stel de payload is als "string", met waarde: "Aan";
   3. zet "Repeat" van "none" naar "interval" (every 10 seconds);
   4. Bewaar de configuratie ("Save");
   5. "Deploy", en controleer de output in het debug-venster.

3. Configureer de onderste inject-node:

   1. Geef deze de naam "Off";
   2. Stel de payload in als "string", met waarde "Uit";
   3. Selecteer "inject once after" - met als waarde "5 seconds";
   4. Zet "Repeat" naar "interval" (every 10 seconds);
   5. Bewaar de configuratie ("Save");
   6. "Deploy", en controleer de output in het debug-venster.

Als het goed is zie je in het debug-venster elke 5 seconden een bericht verschijnen,
afwisselend "aan" en "uit".

*Tips*:

* je kunt in het debug-venster aangeven dat je alleen de "current flow" wilt zien;
* je kunt het debug-venster leeg maken via het vuilnisbakje (rechts boven).

.. rubric:: Opdracht 3.2

De volgende stap is om elke deze waarden te koppelen aan de led van de IoT-knoop.
Eerst maken we de waarden geschikt voor de LED.
Vervolgens koppelen we deze aan de IoT-knoop, via MQTT.

1. Configureer de bovenste inject-node:

   1. Stel de payload in als  JSON, met als waarde: ``{"0": {"dOut": 1}}``.
      *Tip*: bij het invoeren van een JSON-waarde kun je de JSON-editor gebruiken,
      via de ``...`` rechts in het edit-venster.
      Je maakt dan minder fouten.
   2. Bewaar de configuratie ("Save")
   3. "Deploy", en controleer de output in het debug-venster.

2. Configureer de onderste inject-node:

   1. Stel de payload in als  JSON, met als waarde: ``{"0": {"dOut": 0}}``.
   2. Bewaar de configuratie ("Save")
   3. "Deploy", en controleer de output in het debug-venster.

3. Voeg een MQTT output-node toe, en configureer deze:

   1. stel de MQTT broker ("server") in als in bij het dashboard.
   2. gebruik als Topic: ``node/xxxx/actuators``,
      waarbij je voor ``xxxx`` de ID van je IoT-knoop invult.
   3. Bewaar de configuratie ("Save")
   4. "Deploy", en controleer de output in het debug-venster.

Als het goed is zie je nu de berichten niet alleen in het debug-venster verschijnen,
maar knippert de LED van je IoT-knoop ook op dezelfde manier mee.

  De codes voor het in- en uitschakelen van de LED behandelen we later uitgebreider.
  De eerste `"0"`` staat hier voor LED-0.
  Sommige IoT-knopen hebben ook een LED-1: probeer die op dezelfde manier te laten knipperen.

Deze manier van werken is typisch voor NodeRed: je bouwt een flow beetje voor beetje op,
waarbij je in het begin veel gebruik maakt van inject- en debug-nodes.
Je test hiermee elke stap.
Deze nodes kun je laten zitten tijdens het gebruik:
een debug-node kun je eenvoudig uitschakelen als je deze even niet nodig hebt.

Nog enkele suggesties:

* je kunt meerdere MQTT-output-nodes toevoegen met dezelfde input,
  voor verschillende IoT-knopen: je kunt die LEDs tegelijk laten knipperen.
*
