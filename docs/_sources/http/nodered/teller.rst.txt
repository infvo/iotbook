Een teller
----------

De website die we tot nu toe gemaakt hebben is *statisch*:
dat wil zeggen dat de inhoud niet afhangt van de toestand van de server.
Bij eenzelfde URL krijg je altijd hetzelfde resultaat.

Een volgende stap is dat we de website voorzien van een bezoekers-teller:
elke keer als er een http-verzoek voor een webpagina binnenkomt,
verhogen we deze teller.
We laten de huidige waarde van de teller in de webpagina zien.
Dit is een eenvoudig voorbeeld van een *dynamische website*.

Hiervoor maken we gebruik van context-variabelen in NodeRed,
zie: https://nodered.org/docs/user-guide/context.
In een context kun je een waarde opslaan die tussen de verschillende request bewaard blijft.
We gebruiken de *flow-context*: deze is gemeenschappelijk voor de flows op één pagina.

Deze opdracht is ook een demonstratie van het gebruik van *templates*:
een tekst waarin je de waarde van variabelen kunt invullen.
NodeRed gebruikt voor deze templates de Mustache-notatie,
zie: https://mustache.github.io.

1. Voeg een functie-node in tussen de http-input-node (``api/mypage``) en de template-node:
   Verwijder eerst de verbinding tussen de http-input-node en de template-node.
   Sleep een function node naar de flow.
   Verbind de output van de http-input-node met de input van de function-node.
   Verbind de output van de function-node met de input van de template-node.
   (En maak de layout weer netjes.)
2. Configureer de function-node: *Name*: ``inc-count``; *Function*:

.. code-block:: javascript

  var count = flow.get("count") || 0;
  count = count + 1;
  flow.set("count", count);
  msg.count = count;
  return msg;

In de eerste regel halen we de waarde van de flow-variabele "count" op.
Als deze nog niet gedefinieerd is, gebruiken we de waarde 0.
(Dit is een veel-voorkomende JavaScript-constructie.)
Deze waarde hogen we met 1 op, en bewaren deze weer in de flow-variabele "count".
De nieuwe waarde voegen we toe aan de NodeRed-message ``msg``,
om later in het template in te vullen.

3. Configureer de template-node.
   Voeg in, vóór  ``</body>``:

.. code-block:: html

  <p> visits: {{count}} </p>

Via de constructie ``{{count}}`` wordt de waarde van de variable ``msg.count`` in de template-tekst ingevuld.

4. "Deploy"

Controleer via de browser of je bij elke reload van de pagina
(bijvoorbeeld ``https://anna.fred.sensetecnic.com/api/mypage`` )
een volgende waarde van de teller krijgt.
