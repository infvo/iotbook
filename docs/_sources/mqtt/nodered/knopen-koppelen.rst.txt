
Koppelen van knopen
-------------------

Je kunt in NodeRed ook verschillende IoT-knopen aan elkaar koppelen.
We gebruiken dit om met de knoppen van de ene IoT-knoop een LED van een andere IoT-knoop aan- en uit te schakelen.

We gebruiken de ene knop om een LED aan te zetten, en de andere knop om deze uit te zetten.
Dit zorgt ervoor dat er geen vreemde dingen gebeuren als er een bericht verloren gaat.

.. topic:: Idempotente acties

  Bij een idempotente actie maakt het geen verschil of je deze 1 maal of vaker uitvoert.
  Deze aanpak gebruik je veel vaker bij communicatie, vooral als deze "best effort" is.
  Als je niet zeker bent of een bericht aangekomen is, kun je dit zonder risico nogmaals versturen.
  Een voorbeeld is de HTTP-GET opdracht: je kunt een webpagina een extra keer vernieuwen (reload) zonder dat dit gevolgen heeft (voor de server).
  De HTTP-POST opdracht is niet idempotent: de browser vraagt je dan of je het formulier nogmaals wilt versturen.

  In ons geval configureren we de knoppen op de IoT-knopen op een idempotente manier:
  we gebruiken de ene knop voor het aanzetten en de andere voor het uitschakelen van de LED.
  (Ga na wat er kan gebeuren als je één knop gebruikt voor het aan- en uitschakelen,
  in een situatie dat er berichten verloren kunnen gaan.)

Bij deze opdracht heb je twee IoT-knopen nodig, nodeA en nodeB.
Met de buttons van knoop nodeA bedien je een LED van knoop nodeB.
Je kunt hiervoor ook gesimuleerde knopen gebruiken.

(a) Importeer de flow, pas deze aan, en test deze:

* importeer in een nieuw flow-venster de flow-code die hieronder staat;
* configureer de MQTT-input-node met de gegevens van nodeA en van je broker;
* configureer de MQTT-output-node met de gegevens van nodeB en van je broker;
* "Deploy" de aangepaste flow
* Test de flow:

  * Button0 van NodeA schakelt Led0 van NodeB aan
  * Button1 van NodeA schakelt Led0 van NodeB uit

(b) Deze flow heeft als nadeel dat je bij nodeA niet ziet of de led bij nodeB brandt.

* pas de flow aan zodat Button0 ook Led0 van nodeA aanzet, en Button1 deze led uitzet.

  * hint: je hoeft maar 1 output-node toe te voegen.

(c) Wat lastiger is de volgende variant:

* pas de flow aan zodat Button0 *Led1* van nodeA aanzet, en Button1 deze led uitzet.

  * (deze buttons schakelen nog steeds Led0 van nodeB)
  * tip: binnen NodeRed kun je nodes of hele flows kopiëren en plakken met Copy/Paste.

(d) De volgende stap ligt nu voor de hand:

* pas de flow aan zodat Button0 van nodeB Led0 van nodeA en Led1 van nodeB aan zet;
  Button1 van nodeB zet deze leds uit.

.. rubric:: Flow voor de koppeling van schakelaars en LEDs

.. [[Bestand:IoT-node-switch-flow.png|IoT node - switch flow]]

.. figure:: IoT-node-switch-flow.png
   :width: 600 px
   :align: center

   IoT node - switch flow

Uitleg bij deze flow:

* de mqtt-input-node ontvangt (via "subscribe") de berichten van het Topic ``node/[IDa]/sensors``
* de JSON-node zet de JSON-tekst van het mqtt-bericht om in een JavaScript-object (met LPP-payload);
* de node *convertLPPsensors* zet de LPP-payload om naar ``msg.payload``.
* de switch-node splitst de berichten in:

  * berichten met ``button0 = 1`` en
  * berichten met ``button1 = 1``;
  * NB: dit zijn JSONata-expressies: ``=`` staat voor de test op gelijkheid.

* deze verschijnen op de twee uitgangen, en op de ingangen van de template-nodes:

  * de eerste template-node geeft als resultaat {"0": {"dOut":1} (in JSON)
  * de tweede template-node geeft: {"0": {"dOut":0} (idem)

* de mqtt-output-node verstuurt ("publish") het JSON-bericht onder Topic ``node/[IDb]/actuators``
* controleer de berichten met het mqtt-hulpprogramma
* controleer de berichten door debug-nodes aan de flow toe te voegen (vergeet "Deploy" niet!).

NodeRed-code van deze flow:

.. code-block:: JSON

  [{"id":"2137b92e.cd0ef6","type":"mqtt in","z":"ba282e2d.b99a98","name":"","topic":"node/e0f1/sensors","qos":"2","broker":"d7c8ba29.2d4508","x":190,"y":140,"wires":[["e506dde5.324f9"]]},{"id":"e506dde5.324f9","type":"json","z":"ba282e2d.b99a98","name":"","property":"payload","action":"","pretty":false,"x":380,"y":140,"wires":[["e15ea67c.34b19","76e0b51.23c68cc"]]},{"id":"da4f8e21.b2655","type":"switch","z":"ba282e2d.b99a98","name":"button0/1 split","property":"payload","propertyType":"msg","rules":[{"t":"jsonata_exp","v":"payload.button0 = 1","vt":"jsonata"},{"t":"jsonata_exp","v":"payload.button1 = 1","vt":"jsonata"}],"checkall":"true","repair":false,"outputs":2,"x":310,"y":260,"wires":[["7c0ee5f.25ca49c"],["17069d90.2e51fa"]]},{"id":"7c0ee5f.25ca49c","type":"template","z":"ba282e2d.b99a98","name":"led0-1","field":"payload","fieldType":"msg","format":"json","syntax":"mustache","template":"{\"0\":{\"dOut\":1}}","output":"str","x":510,"y":240,"wires":[["bffac5ea.3b6d98","279e4ee7.53c692"]]},{"id":"17069d90.2e51fa","type":"template","z":"ba282e2d.b99a98","name":"led0-0","field":"payload","fieldType":"msg","format":"json","syntax":"mustache","template":"{\"0\":{\"dOut\":0}}","output":"str","x":510,"y":280,"wires":[["bffac5ea.3b6d98","279e4ee7.53c692"]]},{"id":"bffac5ea.3b6d98","type":"mqtt out","z":"ba282e2d.b99a98","name":"","topic":"node/ec54/actuators","qos":"","retain":"","broker":"d7c8ba29.2d4508","x":770,"y":260,"wires":[]},{"id":"e15ea67c.34b19","type":"function","z":"ba282e2d.b99a98","name":"convert-LLP-sensors","func":"if (msg.payload.payload.hasOwnProperty(\"2\")) {\n  msg.payload.button0 = msg.payload.payload[2].dIn;\n} else {\n    button0 = 0;\n}\nif (msg.payload.payload.hasOwnProperty(\"3\")) {\n  msg.payload.button1 = msg.payload.payload[3].dIn;\n} else {\n    button1 = 0;\n}\n\nreturn msg;","outputs":1,"noerr":0,"x":600,"y":140,"wires":[["da4f8e21.b2655"]]},{"id":"279e4ee7.53c692","type":"debug","z":"ba282e2d.b99a98","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":720,"y":340,"wires":[]},{"id":"76e0b51.23c68cc","type":"debug","z":"ba282e2d.b99a98","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":520,"y":80,"wires":[]},{"id":"d7c8ba29.2d4508","type":"mqtt-broker","z":"","name":"","broker":"localhost","port":"1883","clientid":"","usetls":false,"compatmode":true,"keepalive":"60","cleansession":true,"birthTopic":"","birthQos":"0","birthPayload":"","closeTopic":"","closePayload":"","willTopic":"","willQos":"0","willPayload":""}]

De code van *convert-LPP-sensors*:

.. code-block:: JavaScript

  if (msg.payload.payload.hasOwnProperty("2")) {
      msg.payload.button0 = msg.payload.payload[2].dIn;
  } else {
      button0 = 0;
  }
  if (msg.payload.payload.hasOwnProperty("3")) {
      msg.payload.button1 = msg.payload.payload[3].dIn;
  } else {
      button1 = 0;
  }

  return msg;
