IoT-knoop en dashboard
======================

In deze opdracht combineer je een IoT-knoop met een eenvoudig dashboard.
De IoT-knoop kan een hardware-knoop zijn of een simulator(-app).
Je kunt ook een hardware-knoop elders in het internet gebruiken:
voor deze opdrachten staan die op verschillende plekken opgesteld.

Je hebt nodig:

* de dashboard-app: `http://infvopedia.nl/iot-dashboard.html <http://infvopedia.nl/iot-dashboard.html>`_
* de IoT-knoop-simulator: `http://infvopedia.nl/iotnode-app.html <http://infvopedia.nl/iotnode-app.html>`_
* een hardware-IoT-knoop (of de Node-id van een IoT-knoop elders).

Je kunt het dashboard of de IoT-knoop simulator ook op een smartphone gebruiken.

.. figure:: Simulator-app.png
  :width: 300px
  :align: center

Handleiding bij de simulator:

* Node-id is de identificatie van de IoT-knoop, een getal van 4 hexadecimale cijfers.
  Bij het opstarten krijgt deze een random waarde.
  Deze wordt in de browser bewaard: bij herladen van de app houd je dezelfde Node-id.
  Je kunt deze ook zelf invullen, maar probeer te voorkomen dat verschillende
  IoT-knopen dezelfde Node-id hebben.
* De simulator stuurt ongeveer elke minuut de sensorgegevens door.
* De simulator stuur een klik op een knop direct door.
* Je kunt de gesimuleerde sensoren instellen (schuiven):
  bij het volgende sensorbericht worden deze waarden doorgegeven.
  Ook de sensorinstellingen worden in de browser bewaard.

De sensor- en actuatorberichten worden verstuurd via het MQTT-protocol.
Dit is een bi-directioneel protocol: zowel de IoT-knoop als de dashboard-app
kunnen deze berichten versturen en ontvangen.
MQTT komt later nog uitgebreid aan de orde.

Zowel de simulator als de dashboard-app maken automatisch verbinding met
de MQTT-broker op infvopedia.nl. (In toekomstige versies kan dit veranderen.)

.. admonition:: Let op!

  Het MQTT-protocol werkt via poort 1883. Deze poort wordt op sommige
  lokale (school)netwerken geblokkeerd. Gebruik dan een mobiel netwerk:
  je kunt de apps ook op je smartphone gebruiken.

.. figure:: Dashboard-app.png
  :width: 300px
  :align: center

Handleiding voor de dashboard-app:

* De IoT-node id kun je instellen, bijvoorbeeld op de node-id van je
  gesimuleerde IoT-knoop, of van een hardware IoT-knoop.
  Deze instelling wordt in de browser bewaard.
* Je kunt met de knoppen de linker LED van de IoT-knoop aan- en uitzetten.

**Opdracht**

1. Start de simulator op je computer of op een smartphone, in elk geval
   op een computer met een actieve internetverbinding waarbij poort 1883
   niet geblokkeerd is.
2. Idem, voor de dashboard-app
3. Stel op de dashboard-app de Node-id van de simulator in.
4. Zet met de knoppen van de dashboard-app de LED aan en uit,
   controleer dit in de simulator.
5. Stel met de schuiven de sensorwaarden van de simulator in.
   Je moet binnen een minuut de veranderingen in het dashboard zien.
6. Stel in de dashboard-app de Node-id van een hardware IoT-knoop in.
   (Als je zelf geen IoT-knoop hebt, vraag dan je docent naar de id van een
   "elders" werkende IoT-knoop.)

.. mchoice:: h1-mc-dashboard
   :answer_a: Met de dashboard-knoppen kan ik de simulator-led aan- en uitzetten.
   :answer_b: Ik zie in het dashboard de veranderingen in de sensorwaarden van de simulator.
   :answer_c: Ik kan in het dashboard de gegevens van een hardware-knoop bekijken.
   :correct: a,b,c

   Geef aan welke onderdelen gelukt zijn.

.. shortanswer:: h1-sa-dashboard

   Vul hier de sensorgegevens van de hardware-IoT-knoop in.

.. admonition:: Geen verbinding?

  Soms raakt de simulator en/of de dashboard-app de verbinding kwijt,
  bijvoorbeeld als het venster lange tijd niet gebruikt is.
  Een *refresh* in de browser verhelpt dit gewoonlijk.
  (Omdat de instellingen in de browser bewaard blijven kan een refresh nooit kwaad.)
