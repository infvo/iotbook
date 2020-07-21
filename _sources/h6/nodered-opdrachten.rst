NodeRed-opdrachten
==================

Bij LoRaWan/TTN

* ontvangen van TTN IoT-data
* alle devices; selecteren van een bepaald device.
* dashboard voor TTN data
* downlink data?

.. admonition:: Wat heb je nodig?

  * de Application-ID en een Access key (API-key) een bestaande TTN-toepassing
    (application) met actieve IoT-knopen (via je docent);
  * een (gratis) FRED-account, of andere NodeRed-server.
  * alleen voor de gevorderde opdrachten:

    * een (gratis) TTN-account nodig, en
    * een eigen LoRaWan-device.

Ontvangen van TTN data in NodeRed
---------------------------------

.. figure:: iot-ttn-mqtt-flow.png
  :width: 550px
  :align: center

  Flow voor het ontvangen van TTN-data

Maak de bovenstaande flow in NodeRed.
Instellingen voor de MQTT input node:

* server (broker):

  * connection-server: ``eu.thethings.network``
  * security-username: ``my-app-id``, -password: ``my-api-key``

* topic: ``my-app-id/devices/my-dev-id/up``,

Hierin vervang je ``my-app-id`` door de Application-ID (de unieke naam),
``my-api-key`` door de Access key,
en ``my-dev-id`` door de Device-ID (de unieke naam).
Je kunt in het topic in plaats van my-app-id ook ``+`` gebruiken,
als wildcard voor alle devices.

Vergeet **Deploy** niet!

Na enige tijd zie je als alles goed is de data in het debug-venster verschijnen.
(De berichten worden om de paar minuten verstuurd.)

Vragen:

1. met welke datarate (SF, bandbreedte) is het bericht verstuurd?
2. door hoeveel gateways is het bericht ontvangen? Met welke signaalsterktes?
3. kun je op grond van de signaalsterktes en de posities van de gateways iets zeggen over de locatie van het IoT-device?

*Opmerking.* Er zijn ook speciale TTN-nodes in NodeRed,
deze zijn nog wat eenvoudiger in het gebruik, maar worden niet meer onderhouden.

Nodered-TTN-Dashboard
---------------------

Met NodeRed maak je een dashboard voor de sensordata van een Lora/TTN IoT-knoop.
Je gebruikt MQTT voor het dataverkeer met TheThingsNetwork.

.. figure:: iot-ttn-dashboard-flow.png
  :align: center
  :width: 550px

  Dashboard-flow voor TTN

* kopieer de onderstaande NodeRed-flow, en importeer deze naar een leeg tabblad in NodeRed.

.. code-block:: json

  [{"id":"7ccf696f.6e89a","type":"mqtt in","z":"2d6c265f.5f4582","name":"","topic":"ieni-2019/devices/+/up","qos":"2","broker":"f8750939.19b468","x":190,"y":120,"wires":[["9333cb5a.2bb7d8"]]},{"id":"9333cb5a.2bb7d8","type":"json","z":"2d6c265f.5f4582","name":"","property":"payload","action":"","pretty":false,"x":390,"y":120,"wires":[["fa53c382.6e92f8","a08ac852.65c64"]]},{"id":"fa53c382.6e92f8","type":"debug","z":"2d6c265f.5f4582","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":550,"y":120,"wires":[]},{"id":"7c0a111d.3cb75","type":"ui_gauge","z":"2d6c265f.5f4582","name":"","group":"febde8db.f65de8","order":0,"width":0,"height":0,"gtype":"gage","title":"temperature","label":"units","format":"{{payload.celcius}}","min":0,"max":"50","colors":["#00b500","#e6e600","#ca3838"],"seg1":"","seg2":"","x":550,"y":220,"wires":[]},{"id":"15c98233.c9347e","type":"ui_gauge","z":"2d6c265f.5f4582","name":"","group":"397ba453.3b0e0c","order":0,"width":0,"height":0,"gtype":"gage","title":"barometer","label":"units","format":"{{payload.mbar}}","min":"960","max":"1060","colors":["#00b500","#e6e600","#ca3838"],"seg1":"","seg2":"","x":550,"y":280,"wires":[]},{"id":"a08ac852.65c64","type":"change","z":"2d6c265f.5f4582","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.payload_fields","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":320,"y":240,"wires":[["7c0a111d.3cb75","15c98233.c9347e","4b05fe38.aa6af","10d8495b.7b77b7"]]},{"id":"6b425f87.4eb4f","type":"ui_chart","z":"2d6c265f.5f4582","name":"temperature","group":"febde8db.f65de8","order":0,"width":0,"height":0,"label":"temperature","chartType":"line","legend":"false","xformat":"HH:mm:ss","interpolate":"linear","nodata":"","dot":false,"ymin":"0","ymax":"50","removeOlder":1,"removeOlderPoints":"","removeOlderUnit":"86400","cutout":0,"useOneColor":false,"colors":["#1f77b4","#aec7e8","#ff7f0e","#2ca02c","#98df8a","#d62728","#ff9896","#9467bd","#c5b0d5"],"useOldStyle":false,"x":550,"y":340,"wires":[[],[]]},{"id":"f08cec03.67112","type":"ui_chart","z":"2d6c265f.5f4582","name":"mbar","group":"397ba453.3b0e0c","order":0,"width":0,"height":0,"label":"barometer","chartType":"line","legend":"false","xformat":"HH:mm:ss","interpolate":"linear","nodata":"","dot":false,"ymin":"960","ymax":"1060","removeOlder":1,"removeOlderPoints":"","removeOlderUnit":"86400","cutout":0,"useOneColor":false,"colors":["#1f77b4","#aec7e8","#ff7f0e","#2ca02c","#98df8a","#d62728","#ff9896","#9467bd","#c5b0d5"],"useOldStyle":false,"x":530,"y":400,"wires":[[],[]]},{"id":"4b05fe38.aa6af","type":"change","z":"2d6c265f.5f4582","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.celcius","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":320,"y":340,"wires":[["6b425f87.4eb4f"]]},{"id":"10d8495b.7b77b7","type":"change","z":"2d6c265f.5f4582","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.mbar","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":320,"y":400,"wires":[["f08cec03.67112"]]},{"id":"f8750939.19b468","type":"mqtt-broker","z":"","name":"TTN-EU-mqtt","broker":"eu.thethings.network","port":"8883","tls":"ee6286cb.030f78","clientid":"","usetls":true,"compatmode":true,"keepalive":"60","cleansession":true,"birthTopic":"","birthQos":"0","birthPayload":"","closeTopic":"","closeQos":"0","closePayload":"","willTopic":"","willQos":"0","willPayload":""},{"id":"febde8db.f65de8","type":"ui_group","z":"","name":"TTN-device-1-temperature","tab":"18f86ddf.f7110a","disp":true,"width":"6","collapse":false},{"id":"397ba453.3b0e0c","type":"ui_group","z":"","name":"TTN-device-1-barometer","tab":"18f86ddf.f7110a","disp":true,"width":"6","collapse":false},{"id":"ee6286cb.030f78","type":"tls-config","z":"","name":"","cert":"","key":"","ca":"","certname":"","keyname":"","caname":"","verifyservercert":false},{"id":"18f86ddf.f7110a","type":"ui_tab","z":"","name":"TTN dashboard","icon":"dashboard"}]

* configureer de MQTT input node zoals in de vorige opdracht ;
* configureer de debug-node, met output: complete msg object
* "Deploy".

Je ziet nu (als het goed is) in het bijbehorende dashboard-tab "TTN dashboard" de gegevens van de IoT-knoop verschijnen.
Dit kan even duren, omdat een TTN IoT-knoop met tussenperioden van enkele minuten zendt.

Via de debug-node kun je de metadata van de communicatie tussen de IoT-knoop en de gateway volgen.
Een voorbeeld hiervan zie je hieronder:

.. figure:: iot-ttn-metadata.png
  :width: 300px
  :align: center

  Metadata voor TTN-LoRaWan-communicatie

Beantwoord de onderstaande vragen aan de hand van de metadata in het debug-venster.

1. welke gateway(s) ontvangen de berichten van deze IoT-knoop(en)?
2. welke SF wordt gebruikt?
3. wat is de (geschatte) *air time* van de berichten?

Gateways op de kaart
--------------------

De meeste gateways geven hun eigen positie door (latitude, longitude).
We kunnen de positie van de gateways die een bericht ontvangen hebben,
op een kaart weergeven.
We gebruiken daarbij een web-dienst om kaarten in webpagina's te tonen.
De ``worldmap``-nodes maken het gebruik daarvan erg gemakkelijk.
Zie: https://www.npmjs.com/package/node-red-contrib-web-worldmap.
Je installeert deze nodes:

* in de normale NodeRed-installatie: via het hamburgermenu rechtsboven,
  "Manage Pallette"; en dan bij Install zoeken naar "worldmap"; en dan Install.
* in een FRED-installatie: FRED-menu links, "Add or Remove Nodes",
  zoeken maar "worldmap"; en dan aanvinken.

We gebruiken de onderstaande flow:

.. figure:: iot-ttn-gateway-map-flow.png
  :width: 600px
  :align: center

  Flow voor het weergeven van gateways op een kaart.

We gebruiken een functie om de metadata van een bericht om te zetten
in een payload voor deze worldmap-node.
We laten de functie een array met een array van coördinaten opleveren:
dit resulteert in een reeks van nodered-messages naar de worldmap-node.
Zie ook: https://nodered.org/docs/user-guide/writing-functions#multiple-messages

De JavaScript-functie ziet er als volgt uit:

.. code-block:: JavaScript

  var gateways = msg.payload.metadata.gateways;
  var result = []
  for (var g of gateways) {
      result.push({payload: {
                    lat: g.latitude,
                    lon: g.longitude,
                    name: g.gtw_id,
                    rssi: g.rssi,
                    device: msg.payload.dev_id
      }});
  }
  result.push({payload: {
      command: {lat: gateways[0].latitude,
                lon: gateways[0].longitude,
                zoom: 16
  }}});
  return [result];

..

Je kunt de flow importeren vanuit de onderstaande JSON-tekst:

.. code-block:: JSON

  [{"id":"cfe7341.6b96ac8","type":"mqtt in","z":"4edac56d.0049ec","name":"","topic":"ieni-2019/devices/+/up","qos":"2","broker":"f8750939.19b468","x":180,"y":80,"wires":[["d7172949.bc9a7"]]},{"id":"d7172949.bc9a7","type":"json","z":"4edac56d.0049ec","name":"","property":"payload","action":"","pretty":false,"x":170,"y":220,"wires":[["76058e3e.ee615","70486c3c.af848c"]]},{"id":"76058e3e.ee615","type":"debug","z":"4edac56d.0049ec","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":350,"y":140,"wires":[]},{"id":"92159be3.398e58","type":"worldmap","z":"4edac56d.0049ec","name":"","lat":"52.092876","lon":"5.104480","zoom":"11","layer":"","cluster":"","maxage":"","usermenu":"show","layers":"show","panit":"false","panlock":"false","zoomlock":"false","hiderightclick":"false","coords":"none","showgrid":"false","path":"/worldmap","x":680,"y":220,"wires":[]},{"id":"70486c3c.af848c","type":"function","z":"4edac56d.0049ec","name":"Get-gateway-positions","func":"var gateways = msg.payload.metadata.gateways;\nvar result = []\nfor (var g of gateways) {\n    result.push({payload: {\n                  lat: g.latitude,\n                  lon: g.longitude,\n                  name: g.gtw_id,\n                  rssi: g.rssi,\n                  device: msg.payload.dev_id\n    }});\n}\nresult.push({payload: {\n    command: {lat: gateways[0].latitude,\n              lon: gateways[0].longitude,\n              zoom: 16\n}}});\nreturn [result];","outputs":1,"noerr":0,"x":380,"y":220,"wires":[["85a59580.a06018","92159be3.398e58"]]},{"id":"85a59580.a06018","type":"debug","z":"4edac56d.0049ec","name":"","active":true,"tosidebar":true,"console":false,"tostatus":false,"complete":"false","x":650,"y":160,"wires":[]},{"id":"f8750939.19b468","type":"mqtt-broker","z":"","name":"TTN-EU-mqtt","broker":"eu.thethings.network","port":"8883","tls":"ee6286cb.030f78","clientid":"","usetls":true,"compatmode":true,"keepalive":"60","cleansession":true,"birthTopic":"","birthQos":"0","birthPayload":"","closeTopic":"","closeQos":"0","closePayload":"","willTopic":"","willQos":"0","willPayload":""},{"id":"ee6286cb.030f78","type":"tls-config","z":"","name":"","cert":"","key":"","ca":"","certname":"","keyname":"","caname":"","verifyservercert":false}]

..

Opdrachten:

1. Maak bovenstaande flow werkend: je vindt de kaart via het ``/worldmap``-pad
   in plaats van het dashboard-pad, bijvoorbeeld: ``https://hans.fred.sensetecnic.com/api/worldmap``
   (voor een FRED installatie).
2. door voor het punt een "radius"-waarde mee te geven, in meters, wordt er rond de gateway een (gevulde)
   cirkel getekend (zie https://www.npmjs.com/package/node-red-contrib-web-worldmap#circles-and-ellipses).
   Je kunt deze straal af laten hangen van de rssi: hoe negatiever de waarde van rssi,
   des te groter de afstand tot de gateway - en des te groter de cirkel.
   Voeg deze cirkels toe, als hulp om te bepalen waar de IoT-devices zich ten opzicht van de gateways
   bevinden. *Opmerking* de signaalsterkte rssi hangt niet alleen af van de afstand,
   maar ook van de obstakels tussen het IoT-device en de gateway.
   Een hoger geplaatste gateway heeft meestal minder obstakels,
   en geeft een grotere signaalsterkte (minder negatieve rssi).
