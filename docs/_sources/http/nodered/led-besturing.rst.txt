LED-besturing
-------------

In deze opdracht werken we uit hoe je via een webserver een LED kunt aansturen.
In de FRED-versie hebben we geen toegang tot een LED;
we simuleren deze door de kleur in de webpagina.

In de Raspberry Pi-versie heb je vanuit NodeRed toegang tot de GPIO-pinnen.
Daarmee kun je eventueel een LED aansturen.

Voor het aansturen van de LED gebruiken we twee URLs: ``/ledon`` en ``/ledoff``.
Hiervoor maken we twee flows, met voor elk dezelfde opzet als bij de teller:
een http-input-node, een function-node, een template-node, en een http-output-node.

.. figure:: Nodered-flow-led-on-off.png
   :width: 600 px
   :align: center

   NodeRed flow voor led-besturing

1. Maak deze flow voor ``ledon``, door de nodes naar het flow-venster te slepen en verbinden.
2. Configureer de http-input-node: *URL*: ``/ledon``, *method*: ``GET``.
3. Configureer de function node: *Name*: ``led-on``, ``Function``:

.. code-block:: javascript

  msg.color = "red";
  return msg;

Als je toegang hebt tot hardware zul je in deze functie de LED uitschakelen.

4. Configureer de template node: *Template*:

.. code-block:: html

  <!doctype HTML>
  <html>
    <head>
      <title>LED control</title>
    </head>
    <body>
      <h1>LED control</h1>
      <p>
        <a href="/api/ledon">on</a>
        <span style="color: {{color}}"> [[LED]]</span>
        <a href="/api/ledoff">off</a>
      </p>
    </body>
  </html>

*Opmerking*: in deze html-code gebruiken we de URLs ``/api/ledon`` en ``/api/ledoff``.
Dit is nodig voor de FRED-versie.
Voor andere NodeRed-installaties laat je het ``/api``-deel weg.

5. Kopieer deze flow voor ``ledoff``
6. Configureer in deze kopie de http-input-node: *URL*: ``/ledoff``.
7. Configureer de function-node: *Name*: ``led-off``, ``Function``:

.. code-block:: javascript

  msg.color = "black";
  return msg;

Als je toegang hebt tot hardware zul je in deze functie de LED uitschakelen.

8. De template-node hoef je niet aan te passen.
9. "Deploy" en controleer via de browser de werking van de webpagina's.
   (bijvoorbeeld: ``https://anna.fred.sensetecnic.com/api/ledon``)
10. Je kunt deze flows vereenvoudigen: voor beide flows zijn de "staarten" gelijk.
    Deze kun je combineren: verbind de output van function-node ``led-off``
    met de template-node in de flow van ``/ledon``.
    Verwijder de tweede template-node en de bijbehorende http-output-node.
    Je krijgt dan onderstaande flow:

.. figure:: Nodered-flow-led-on-off-combined.png
   :width: 600 px
   :align: center

   Ledbesturing met gedeelde response-"staart"

Door slim gebruik te maken van templates kun je vaker flows op zo'n manier combineren.

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
