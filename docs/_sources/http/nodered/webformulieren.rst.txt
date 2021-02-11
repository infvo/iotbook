Webformulieren
--------------

In deze opdracht gaan we aan de slag met een webformulier:
in de browser vul je de waarden in het formulier in;
de browser stuurt het formulier via een POST-request (in plaats van GET) naar de server;
de server verwerkt dit request, en stuurt een (HTML)document terug.

Een formulier heeft in HTML de vorm:

.. code-block:: html

  <form action="/form-url" method="post">
    ... <input type="text" name="inputname1"> ...
    ... <input type="number" name="inputname2"> ...
    <button type="submit">Submit</button>
  </form>

Bij de form-tag geef je op wat de URL is van het formulier,
en wat de bijbehorende http-method is:
in dit voorbeeld, POST met als URL ``/form-url``.
Daarna volgen een aantal input-velden, voor tekst, wachtwoord, datum, meerkeuze, enz.
Een formulier heeft meestal een *submit-button* waarmee je het ingevulde formulier opstuurt.

We gebruiken hier een formulier voor het aansturen van de LED:

.. code-block:: html

  <form action="/leds/0" method="post">
     <button type="submit" name="on" value="1">On</button>
     <span style="color:{{color}};"> [[LED]] </span>
     <button type="submit" name="on" value="0">Off</button>
  </form>

De URL van het formulier is ``/leds/0``: dit geeft aan dat het om LED-0 gaat.
(De hardware kan meerdere LEDs bevatten.)
De method is ``POST``: via het formulier veranderen we de toestand van de LED.
(Eigenlijk zou dit een PUT-opdracht moeten zijn, maar dat kan niet in HTML;
zie de opmerkingen over REST API's verderop.)
We gebruiken hier 2 buttons: voor het aan- en uitzetten van de LED.
Beide buttons zijn submit-buttons: deze zorgen ervoor dat het formulier direct verstuurd wordt.

Het formulier heeft in dit geval 1 parameter: ``on``, met als mogelijke waarden ``0`` en ``1``.
De parameters van een formulier worden verstuurd als een (gecodeerde) string van de vorm:
``name0=value0&name1=value1...&namex=valuex``.
Voor dit voorbeeld krijgen we dan ``on=1`` of ``on=0``.

Merk op dat we nu één URL hebben voor beide schakelaars (buttons);
de waarde voor het aansturen van de LED geven we nu niet weer als twee verschillende URLs,
maar als parameter van de formulier-URL.

In de (NodeRed) server verwerken we deze parameter als volgt:

.. code-block:: javascript

  if (msg.payload.on == "1") {
      flow.set("ledOn", true);
  } else if (msg.payload.on == "0") {
      flow.set("ledOn", false);
  }

We kunnen dit ook schrijven als: ``flow.set("ledOn", msg.payload=="1")``.

1. Maak de volgende flow, door de nodes naar het flow-deel te slepen en te verbinden.

.. figure:: Nodered-form-flow-0.png
   :width: 600 px
   :align: center

   NodeRed form flow

(De namen van de nodes hoef je nog niet aan te passen.)

2. Configureer de bovenste http-input-node: *URL*: ``/led-control``,
   *method*: ``GET``.
   Dit is de node/URL voor de html-pagina met het formulier.
3. Configureer de onderste http-input-node: *URL*: ``/leds/0``,
   *method*:``POST``.
   Dit is de node/URL voor het afhandelen van het ingevulde formulier.
4. Configureer de onderste function-node (``updateLed``),
   voor het afhandelen van het formulier:

.. code-block:: javascript

  if (msg.payload.on == "1") {
      flow.set("ledOn", true);
  } else if (msg.payload.on == "0") {
      flow.set("ledOn", false);
  }
  return msg;

5. Configureer de bovenste function-node (``properties``),
   voor het zetten van de template-parameters.

.. code-block:: javascript

  if (flow.get("ledOn") || false) {
      msg.color = "red";
  } else {
      msg.color = "black";
  }
  return msg;

6. Configureer de template-node:

.. code-block:: html

  <html>
    <head>
        <title>LED server</title>
    </head>
    <body> <h1>LED control</h1>
      <p>
        <form action="/api/leds/0" method="put">
           <button type="submit" name="on" value="1">On</button>
           <span style="font-weight:bold;color:{{color}};"> [[LED]] </span>
           <button type="submit" name="on" value="0">Off</button>
        </form>
      </p>
      <p><a href="/api/led-control">Home</a></p>
    </body>
  </html>

*Opmerking*: in deze html-code gebruiken we de URLs ``/api/leds/0`` en ``/api/led-control``.
Dit is nodig voor de FRED-versie.
Voor andere NodeRed-installaties laat je het ``/api``-deel weg.


7. "Deploy" en test de website.

.. figure:: Nodered-form-gauge.png
   :width: 600 px
   :align: center

   NodeRed flow: formulier met dashboard-meter

8. Voeg als uitbreiding van deze flow, een dashboard-node ("gauge", ronde meter).
   Verbind de input daarvan met de output van de function-node ``properties``.
   Configureer deze node als volgt:

   1. Configureer deze node: *Group*: ``add new ui group``,
   2. Voeg een nieuwe ui groep toe met als naam: Simulated LED;
      gebruik hiervoor het potloodje rechts van ``add new ui group``
   3. met *Tab*: add new tab, met als naam: Simulator.

9. Pas de function-node ``Properties`` aan: zet ``msg.value`` op 0 of 10,
   voor led "aan" of "uit".

.. code-block:: javascript

  if (flow.get("ledOn") || false) {
      msg.color = "red";
      msg.value = 0;
  } else {
      msg.color = "black";
      msg.value = 10;
  }
  return msg;

10. "Deploy" en test deze flow.

.. topic:: REST-interfaces

  Waarom gebruiken we hier een formulier voor het veranderen van de toestand van de LED?
  Dit is (bijna) een voorbeeld van een REST-interface (https://en.wikipedia.org/wiki/Representational_state_transfer).
  Dit is een manier om interfaces in het web te definiëren.

  * elke *resource*, bijvoorbeeld een LED, heeft een eigen adres (URL) in het web.
    In dit geval is het adres van de LED: "/led/0".
  * voor het opvragen van de toestand van een resource gebruik je een HTTP GET-opdracht.
    De afspraak is dat je hiermee de toestand niet verandert:
    voor de resource maakt het niet uit of je deze opdracht 0 maal of vaker uitvoert.
    In dat geval is GET een *veilige* opdracht (ook wel: *nullipotent*).
  * voor het veranderen van de toestand van een resource gebruik je een andere opdracht;
    voor dit voorbeeld zou dit een HTTP PUT moeten zijn; deze is *idempotent*,
    als je deze herhaalt blijft de betekenis gelijk.
  * we kunnen een PUT-opdracht niet gebruiken in een HTML-formulier:
    dat kan alleen vanuit JavaScript.
    Voorlopig behelpen we ons hier met een POST:
    we houden ons daarmee niet aan de regels voor REST API's.

  *Vraag*: bestudeer de (onofficiële) documentatie van de Philips Hue Bridge
  (http://www.burgestrand.se/hue-api/api/lights/).
  Met welke opdracht zet je een lamp aan? Met welke uit?
