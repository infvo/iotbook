LED-besturing
-------------

In deze opdracht stuur je via een webserver de LED van een IoT-knoop aan.
In de webserver zetten we het HTTP-request om in een MQTT-bericht.

Als je NodeRed op een Raspberry Pi gebruikt, kun je ook de GPIO-pinnen van de Pi
vanuit NodeRed besturen.
Daarmee kun je ook een LED op de PI aan- en uitzetten.

Voor het aansturen van de LED gebruiken we twee URLs: ``/ledon`` en ``/ledoff``.
De uitvoer van een HTTP input-node koppelen we aan een template-node voor de HTTP/HTML-response,
en aan een template-node voor het JSON-bericht dat we via MQTT versturen.
De beide outputs, HTTP en MQTT, zijn voor beide inputs dezelfde,
en deze kunnen we dus combineren.

.. figure:: Nodered-ledon-ledoff.png
   :width: 600 px
   :align: center

   NodeRed flow voor led-besturing

.. rubric:: Opdracht

1. Maak deze flow door de nodes naar het flow-venster te slepen en te verbinden.
2. Configureer de eerste http-input-node: *URL*: ``/ledon``, *method*: ``GET``.
3. Configureer de verbonden (HTML) template node, met output naar de HTTP-response-node:

   1. *Format*: ``Mustache template``
   2. *Template*: ``Led switched on.``

4. Configureer de verbonden (JSON) template node, met output naar de MQTT output node:

   1. *Format*: ``Plain text``
   2. *Syntax highlight*: ``JSON``
   3. *Template*: ``{"0": {"dOut": 1}}``

5. Configureer de MQTT output node:

   1. *Server* - vul de MQTT brokergegevens in;
   2. *Topic*: ``node/xxxx/actuators`` - waarin ``xxxx`` het nummer van je IoT-knoop is.

6. Configureer de tweede http-input-node: *URL*: ``/ledon``, *method*: ``GET``.
7. Configureer de tweede HTML template node als hierboven, met *Template*: ``Led switched off``
8. Configureer de tweede JSON template node als hierboven, met *Template*: ``{"0": {"dOut": 0}}``
9. Deploy

Als je nu via een browser het URL-pad ``/ledon`` gebruikt, moet de LED op de IoT-knoop aangaan;
bijvoorbeeld: ``https://anna.fred.sensetecnic.com/api/ledon``.
Met ``/ledoff`` kun je de LED weer uitschakelen.

**Opmerking.** Zoals je ziet kun je met deze flow, met alleen GET-opdrachten,
de LED aan- en uitschakelen.
Dit gebruik van GET is niet in overeenstemming met de regels van het web:
een GET-opdracht vraagt alleen data op, en verandert de toestand van de "resource" niet.
Bij de REST-API's gaan we daar verder op in.


.. topic:: Idempotente opdrachten

  Waarom gebruiken we hier *twee links (knoppen)* voor het besturen van de LED?
  Je kunt toch met één drukknop een lamp aan- en uitzetten?
  De ene keer drukken zet de lamp aan, de volgende zet deze weer uit.
  Maar: deze aanpak geeft problemen als de drukknop niet betrouwbaar is,
  zoals bij communicatie vaak het geval is.
  Als een omschakelbericht niet aankomt,
  heeft het volgende bericht een tegengestelde betekenis.
  Door twee knoppen te gebruiken, heeft elke knop een duidelijke betekenis.
  Je kunt dan een knop nog een keer gebruiken,
  "voor de zekerheid", bijvoorbeeld als je nog geen reactie gezien hebt.

  Een opdracht die dezelfde betekenis houdt als je deze herhaalt noemen we *idempotent*.
  Het maakt dan niet uit of je deze 1, 2 of 10 keer uitvoert.

  De HTTP GET-opdracht voor het ophalen van een webpagina is idempotent.
  Je kunt altijd een "reload" van een webpagina doen: je krijgt dan hetzelfde resultaat.

  De HTTP POST-opdracht, voor het insturen van een formulier, is niet idempotent.
  De browser geeft een waarschuwing als je voor een formulier een "reload" uit wilt voeren:
  je loopt bijvoorbeeld het risico dat je een artikel nog een keer bestelt.

  *Vraag*: welke knoppen op een TV-afstandsbediening zijn idempotent?
