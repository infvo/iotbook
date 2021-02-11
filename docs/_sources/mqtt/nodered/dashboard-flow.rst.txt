

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

Download: :download:`mqtt-dashboard-flow.json <./mqtt-dashboard-flow.json>`

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
