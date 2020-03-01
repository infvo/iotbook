Vragen en opdrachten
====================

Subsection 2.4.1
----------------

.. nummering van de opdrachten: IoT-xxxx
.. niet teveel aan het hoofdstuk gekoppeld?



Vraag: waarom heb je een server in het publieke internet, zoals een MQTT-broker,
nodig om vanuit een app overal te kunnen communiceren met de IoT-knopen thuis?
- de lokale gateway (router/firewall) staat geen directe communicatie van buiten naar het lokale netwerk toe;
- de afstand tussen de app en de IoT-knopen kan te groot zijn om deze zonder een dergelijke tussenstap te overbruggen;
- het formaat van de berichten van de IoT-knopen is niet geschikt voor de app op je smartphone;
- (vergroot de snelheid; vergroot de veiligheid?)


.. shortanswer:: IoT-201

   Waarom het je bij een toepassing zoals slimme verlichting (Hue) een server in het publieke internet nodig?

.. tabbed:: IoT-202

  .. tab:: Question

    .. shortanswer:: IoT-203

       Waarom het je bij een toepassing zoals slimme verlichting (Hue) een server in het publieke internet nodig?

  .. tab:: Check

    De lokale LAN-gateway staat geen directe communicatie van buiten naar apparaten in het lokale netwerk toe.
    De lokale IoT-apparaten, bijvoorbeeld de bridge, kunnen een verbinding met een server in het publieke internet opzetten.
    Vanuit deze server is dan communicatie naar de lokale IoT-apparaten mogelijk.


.. mchoice:: IoT-204
   :answer_a: de lokale LAN-gateway staat geen directe communicatie van buiten naar de apparaten in het lokale netwerk toe.
   :answer_b: de afstand tussen de app en de IoT-apparaten is soms te groot om deze zonder een server-tussenstap te overbruggen.
   :answer_c: het formaat van de berichten vanuit de app op je smartphone is niet geschikt voor de IoT-apparaten.
   :correct: a
   :feedback_a: OK.
   :feedback_b: Het internet zorgt voor het overbruggen van de afstand - als je een verbinding kunt maken.
                Helaas blokkeert de lokale LAN-gateway binnenkomende berichten.
   :feedback_c: Dit zou je in de app kunnen aanpassen, of eventueel in een lokale bridge.
                Daarvoor heb je geen server nodig.

   Waarom heb je een server in het publieke internet, zoals een MQTT-broker,
   nodig om vanuit een app overal te kunnen communiceren met de IoT-apparaten thuis?

.. shortanswer:: IoT-205

   Een IoT-radio heeft meestal een vast maximaal vermogen.
   Verklaar met behulp van :code:`energie = vermogen * tijd` dat je met een lagere bitrate
   een grotere afstand kunt overbruggen.

..

.. dragndrop:: IoT-206
   :feedback: Feedback that is displayed if things are incorrectly matched.
   :match_1: IoT-gateway|||Verbindt IoT-radio-netwerk en het lokale netwerk (LAN)
   :match_2: LAN-gateway|||Verbindt het lokale netwerk en het publieke internet
   :match_3: IoT-radio|||Verbindt de IoT-knoop met de IoT-gateway
   :match_4: MQTT-broker|||Verbindt de IoT-knopen met de IoT-controllers, apps en diensten in het publieke internet,

   Plaats de termen bij hun omschrijving.
