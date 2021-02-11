Eerste webserver
----------------

NodeRed is een HTTP-server op basis van Node.js.
Dit kun je vergelijken met Apache of Nginx op andere systemen.
Met NodeRed kun je snel een simpele webserver maken.
We gebruiken dit voor het bestuderen van het HTTP-protocol.

We gebruiken hiervoor de volgende knopen:

+----------------------+--------------------+------------------+
| **figuur**           | **naam**           | **soort node**   |
+----------------------+--------------------+------------------+
| |http-input-node|    | http-input-node    |  input           |
+----------------------+--------------------+------------------+
| |http-response-node| | http-response-node |  output          |
+----------------------+--------------------+------------------+
| |template-node|      | template-node      |  in-out          |
+----------------------+--------------------+------------------+

.. |http-input-node| image:: nodered-http-input-node.png
.. |http-response-node| image:: nodered-http-output-node.png
.. |template-node| image:: nodered-template-node.png

Een HTTP-request van een browser bevat onder andere de volgende onderdelen:

* de HTTP-request *method*, bijvoorbeeld ``GET`` of ``POST``.
* het pad-gedeelte van de URL van het HTTP-request, bijvoorbeeld: ``/hello``.

.. rubric:: Opdracht A

.. figure:: nodered-hello.png
   :width: 600 px
   :align: center

   NodeRed http flow-voorbeeld

Maak met de bovenstaande flow een simpele webserver in NodeRed:

1. De eerste node in deze HTTP-flow is een http-input-node.
   Configureer deze als volgt (dubbel-klik op de node):

   1. *method*: ``GET``
   2. *URL*: ``/hello``

2. De tweede node is een template-node. Configuratie:

   1. *Format*: ``Mustache template``
   2. *Template*: ``<h1>Hello World!<h1>``

3. De derde node is een HTTP-response node. Configureren is niet nodig.
4. Voor het testen verbind je een debug-node met de output van de http-input-node.
   Configuratie:

   1. *Output*: ``complete msg object``

5. "Deploy"
6. Test de webserver.
   Geef in een browser de URL van je website op:

* voor FRED: de URL van je NodeRed-instantie, gevolgd door ``/api/hello``.
  Bijvoorbeeld:  ``https://anna.fred.sensetecnic.com/api/hello``
* voor een Raspberry Pi: de URL van de NodeRed-instantie, gevolgd door ``/hello``,
  bijvoorbeeld: ``http://192.168.1.201:1880/hello``

In het geval van FRED moet je dit doen in een venster van de browser waarmee je ingelogd bent bij FRED.
Dit betekent dat alleen jij deze website kunt zien, anderen niet.
Dit is een beperking van de gratis versie van FRED.
Een "normale" NodeRed-installatie heeft deze beperking niet: iedereen kan dan je webpagina zien.

Als alles goed gaat, krijg je als response in de browser krijg je:  ``Hello World!``
Via de debug-output kun je de binnenkomende HTTP-requests bekijken.

7. zoek in de debug-output in NodeRed naar het ``req``-deel van het msg-object.
   Daarin vind je onder andere de velden ``URL`` en ``method``.
   Controleer of deze kloppen met wat je verwacht.

*Opmerking* Een Mustache-template wordt automatisch omgezet in de bijbehorende HTML-code.
Je kunt ook de pure HTML invullen, als *Format* geef je dan ``plain text``,
en voor de syntax highlight gebruik je ``HTML``.
