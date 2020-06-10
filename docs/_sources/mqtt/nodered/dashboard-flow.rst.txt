

Sensor-dashboard
----------------

Je maakt met NodeRed een sensor-dashboard voor de IoT-knoop.

* Als je een NodeRed-server in het publieke internet gebruikt,
  dan is dit dashboard toegankelijke voor computers in het internet (lokaal en publiek).
* Als je een NodeRed-server in het lokale netwerk gebruikt,
  bijvoorbeeld op een Raspberry Pi,
  dan is het dashboard alleen toegankelijk voor computers in het lokale netwerk.

Gebruik voor het dashboard de volgende flow:

.. figure:: IoT-dashboard-flow.png
   :width: 600 px
   :align: center

   NodeRed-flow voor IoT-dashboard

Kopieer de onderstaande flow-code naar een lege flow-tab in NodeRed.

.. code-block:: JSON

  [{"id":"97c52af7.83a448","type":"mqtt in","z":"d22f8dde.af3ae8","name":"","topic":"node/8f12/sensors","qos":"2","broker":"d7c8ba29.2d4508","x":170,"y":120,"wires":[["2a7496ff.f65fb2"]]},{"id":"2a7496ff.f65fb2","type":"json","z":"d22f8dde.af3ae8","name":"","pretty":false,"x":150,"y":200,"wires":[["1e9d97ab.35c888"]]},{"id":"14f7b979.cab697","type":"ui_gauge","z":"d22f8dde.af3ae8","name":"","group":"a4643fc8.e80d68","order":0,"width":0,"height":0,"gtype":"gage","title":"Temperatuur","label":"'C","format":"{{payload}}","min":0,"max":"50","colors":["#00b500","#e6e600","#ca3838"],"seg1":"","seg2":"","x":630,"y":180,"wires":[]},{"id":"6c6dc3e3.2ae914","type":"ui_chart","z":"d22f8dde.af3ae8","name":"","group":"b7537500.9e9de","order":0,"width":0,"height":0,"label":"Temperatuur","chartType":"line","legend":"false","xformat":"HH:mm:ss","interpolate":"linear","nodata":"","dot":false,"ymin":"0","ymax":"50","removeOlder":1,"removeOlderPoints":"","removeOlderUnit":"86400","cutout":0,"useOneColor":false,"colors":["#1f77b4","#aec7e8","#ff7f0e","#2ca02c","#98df8a","#d62728","#ff9896","#9467bd","#c5b0d5"],"useOldStyle":false,"x":630,"y":220,"wires":[[],[]]},{"id":"98955d0f.426088","type":"change","z":"d22f8dde.af3ae8","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.temperature","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":420,"y":200,"wires":[["6c6dc3e3.2ae914","14f7b979.cab697"]]},{"id":"2837dd7b.950f42","type":"ui_gauge","z":"d22f8dde.af3ae8","name":"","group":"a4643fc8.e80d68","order":0,"width":0,"height":0,"gtype":"gage","title":"Luchtdruk","label":"units","format":"{{payload}}","min":"950","max":"1050","colors":["#00b500","#e6e600","#ca3838"],"seg1":"","seg2":"","x":620,"y":280,"wires":[]},{"id":"19137cd2.ee77ab","type":"ui_chart","z":"d22f8dde.af3ae8","name":"","group":"b7537500.9e9de","order":0,"width":0,"height":0,"label":"Luchtdruk","chartType":"line","legend":"false","xformat":"HH:mm:ss","interpolate":"linear","nodata":"","dot":false,"ymin":"950","ymax":"1050","removeOlder":1,"removeOlderPoints":"","removeOlderUnit":"86400","cutout":0,"useOneColor":false,"colors":["#1f77b4","#aec7e8","#ff7f0e","#2ca02c","#98df8a","#d62728","#ff9896","#9467bd","#c5b0d5"],"useOldStyle":false,"x":620,"y":320,"wires":[[],[]]},{"id":"a21da591.9e0878","type":"change","z":"d22f8dde.af3ae8","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.barometer","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":420,"y":300,"wires":[["2837dd7b.950f42","19137cd2.ee77ab"]]},{"id":"1e9d97ab.35c888","type":"function","z":"d22f8dde.af3ae8","name":"convert-LLP-sensors","func":"msg.payload.temperature = msg.payload.payload[4].temperature / 10;\nmsg.payload.barometer = msg.payload.payload[5].barometer / 10;\nmsg.payload.humidity = msg.payload.payload[6].humidity;\nmsg.payload.lightlevel = msg.payload.payload[8].aIn;\nmsg.payload.led0 = msg.payload.payload[0].dOut;\nmsg.payload.led1 = msg.payload.payload[1].dOut;\n//msg.payload.button0 = msg.payload.payload[2].dIn;\n//msg.payload.button1 = msg.payload.payload[3].dIn;\nreturn msg;","outputs":1,"noerr":0,"x":190,"y":300,"wires":[["a21da591.9e0878","98955d0f.426088","c8bda563.74bfa"]]},{"id":"52abcdc9.226a74","type":"ui_gauge","z":"d22f8dde.af3ae8","name":"","group":"a4643fc8.e80d68","order":0,"width":0,"height":0,"gtype":"gage","title":"Licht","label":"units","format":"{{payload}}","min":"0","max":"1023","colors":["#00b500","#e6e600","#ca3838"],"seg1":"","seg2":"","x":610,"y":380,"wires":[]},{"id":"c3fd28d5.22ee","type":"ui_chart","z":"d22f8dde.af3ae8","name":"","group":"b7537500.9e9de","order":0,"width":0,"height":0,"label":"Licht","chartType":"line","legend":"false","xformat":"HH:mm:ss","interpolate":"linear","nodata":"","dot":false,"ymin":"0","ymax":"1023","removeOlder":1,"removeOlderPoints":"","removeOlderUnit":"86400","cutout":0,"useOneColor":false,"colors":["#1f77b4","#aec7e8","#ff7f0e","#2ca02c","#98df8a","#d62728","#ff9896","#9467bd","#c5b0d5"],"useOldStyle":false,"x":610,"y":420,"wires":[[],[]]},{"id":"c8bda563.74bfa","type":"change","z":"d22f8dde.af3ae8","name":"","rules":[{"t":"set","p":"payload","pt":"msg","to":"payload.lightlevel","tot":"msg"}],"action":"","property":"","from":"","to":"","reg":false,"x":420,"y":400,"wires":[["52abcdc9.226a74","c3fd28d5.22ee"]]},{"id":"d7c8ba29.2d4508","type":"mqtt-broker","z":"","name":"","broker":"localhost","port":"1883","clientid":"","usetls":false,"compatmode":true,"keepalive":"60","cleansession":true,"birthTopic":"","birthQos":"0","birthPayload":"","willTopic":"","willQos":"0","willPayload":""},{"id":"a4643fc8.e80d68","type":"ui_group","z":"","name":"My-meters","tab":"4e75c8d2.40f86","disp":true,"width":"6","collapse":false},{"id":"b7537500.9e9de","type":"ui_group","z":"","name":"My-graphs","tab":"4e75c8d2.40f86","disp":true,"width":"6","collapse":false},{"id":"4e75c8d2.40f86","type":"ui_tab","z":"","name":"My-node 8f12","icon":"dashboard"}]

(a) Pas in deze flow de parameters van de MQTT-input-node aan, en bekijk het dashboard.

* configureer de MQTT-input-node voor je IoT-knoop (nodeid) en voor je MQTT-broker;
* ga naar de webpagina van het dashboard via de tab "dasboard", bij het debug-venster rechts.
  In deze tab klik je op het vierkantje met de uitgaande pijl (rechtsboven).
* in het dashboard vind je de gegevens van je eigen knoop onder "My Node".

(b) Breid het dashboard uit met een weergave van de lichtsensor.

* kopieer de deelflow met 3 knopen: *set msg.payload*, Luchtdruk(meter) en Luchtdruk (grafiek),
* en plak deze in dezelfde flow;
* pas de knoop *msg.payload* aan: ``set msg.payload to msg.payload.lightlevel``
* pas de knopen Luchtdruk (meter) en Luchtdruk (grafiek) aan: vervang "Luchtdruk" door "Licht",
  en stel de minima en maxima in op 0 en 1023.
* **deploy**
* controleer het dashboard; het kan even duren voordat de IoT-knoop de sensorwaarden verstuurd heeft.
  (Je kunt dit versnellen door een bericht naar de IoT-knoop te sturen, bijvoorbeeld om de LED aan te zetten.)
