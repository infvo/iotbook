Eerste webserver
----------------

NodeRed is een HTTP-server op basis van Node.js.
Dit kun je vergelijken met Apache of Nginx op andere systemen.
Met NodeRed kun je snel een simpele webserver maken.
We gebruiken dit voor het bestuderen van het HTTP-protocol.

We gebruiken hiervoor de volgende knopen:

+--------------------+------------------+------------------+
| **figuur**         | **naam**         | **soort node**   |
+--------------------+------------------+------------------+
| |http-input-node|  | http-input-node  |  input           |
+--------------------+------------------+------------------+
| |http-output-node| | http-output-node |  output          |
+--------------------+------------------+------------------+
| |template-node|    | template-node    |  in-out          |
+--------------------+------------------+------------------+

.. |http-input-node| image:: nodered-http-input-node.png
.. |http-output-node| image:: nodered-http-output-node.png
.. |template-node| image:: nodered-template-node.png

Een HTTP-request van een browser bevat onder andere de volgende onderdelen:

* het pad-gedeelte van de URL van het HTTP-request, bijvoorbeeld: ``/mypage``.
* de HTTP-request *method*, bijvoorbeeld ``GET`` of ``POST``.

Maak met deze nodes de volgende flow:

.. figure:: Nodered-hello.png
   :width: 600 px
   :align: center

   NodeRed http flow-voorbeeld

(De namen van de knopen hoef je niet aan te passen.)

Door het configureren van de nodes maken we een eigen webserver,
voor het afhandelen van een eigen pagina.

1. De eerste stap in een HTTP-flow is een http-input-node.
   Deze configureren we als volgt (dubbel-klik op de node):
   1. gebruik als *method*: ``GET``
   2. gebruik als *URL*: ``/mypage``
2. verbind een debug-node met de output van deze http-input-node.
   De andere verbindingen kun je laten zoals ze zijn.
3. Configureer de debug-node *Output*: ``complete msg object`` (en "Done").
4. "Deploy"

5. Nu kun je testen of een GET-request voor ``/mypage`` afgehandeld wordt.

Gebruik hiervoor als URL in een browser:

* voor FRED: de URL van je NodeRed-instantie, gevolgd door ``/api/mypage``.
  Bijvoorbeeld:  ``https://anna.fred.sensetecnic.com/api/mypage``
* voor een Raspberry Pi: de URL van de NodeRed-instantie, gevolgd door ``/mypage``.

In het geval van FRED moet je dit doen in een venster van de browser waarmee je ingelogd bent bij FRED.
Dit betekent dat alleen jij deze website kunt zien, anderen niet.
Dit is een beperking van de gratis versie van FRED.

Een "normale" NodeRed-installatie heeft deze beperking niet: iedereen kan dan je webpagina zien.

Als response in de browser krijg je:  ``This is the payload: [object Object] !``

6. zoek in de debug-output naar het ``req``-deel van het msg-object.
   Daarin vind je onder andere de velden ``URL`` en ``method``.
   Controleer of deze kloppen met wat je verwacht.

7. De volgende stap is het aanpassen van de webpagina.
   Configureer de template-node, en vul als template-waarde in:

.. code-block::html

  <!doctype HTML>
  <html>
    <head>
      <title>My page</title>
    </head>
    <body>
      <h1>Welkom op mijn website</h1>
    </body>
  </html>

Vul als *Name* in: ``mypage``.
En "Done" en "Deploy".

Open nu in de browser een webpagina met de URL van je NodeRed-pagina.
(Bijvoorbeeld: ``https://anna.fred.sensetecnic.com/api/mypage``.)
Controleer of je nu je eigen webpagina te zien krijgt.
