HTTP website-up test
====================

In deze opdracht maak je een NodeRed-flow waarmee je kunt testen of een website "up" is.
Afhankelijk van het resultaat laat je op een IoT-knoop een groene of rode LED branden.

.. figure:: NodeRed-http-request-ieni.png
   :width: 700px
   :align: center

Voor deze opdracht gebruik je de HTTP-request node,
waarmee je een HTTP-verzoek met een opgegeven URL kunt versturen.
Deze URL kun je in de HTTP-request node zelf configureren, of via de ``msg.payload`` meegeven.

+----------------------+--------------------+------------------+
| **figuur**           | **naam**           | **soort node**   |
+----------------------+--------------------+------------------+
| |http-request-node|  | http-request-node  |  input-output    |
+----------------------+--------------------+------------------+
| |html-node|          | html-node          |  input-output    |
+----------------------+--------------------+------------------+
| |template-node|      | template-node      |  input-output    |
+----------------------+--------------------+------------------+

.. |http-request-node| image:: NodeRed-http-request-node.png
   :width: 150px

.. |html-node| image:: NodeRed-html-node.png
   :width: 150px

.. |template-node| image:: nodered-template-node.png
   :width: 150px

1. Maak de deelflow: inject node - http-request node - debug node.

   * configureer http-request node:
   * *method*: ``GET``,
   * *URL*: ``https://ieni.org``

2. Deploy

Test deze flow met de inject-node.
Bekijk het resultaat in het debug-venster:
als het goed is zie je daar het HTML-document dat de server als response teruggestuurd heeft.

We hebben niet een compleet HTML-bestand nodig:
we willen alleen weten of de inhoud ongeveer klopt met wat we verwachten.
We gebruiken daarvoor de HTML-node: daarmee kun je elementen uit een HTML-document filteren.

3. Voeg tussen de http-request node en de debug node een html-node toe:

   * configureer de html-node:
   * selector: ``h1``

4. Deploy

Test deze flow weer.
In het debug-venster moet je nu de H1-elementen van de i&i pagina zien.
Als het goed is, is dit een array met één element.

De volgende stap is dat je controleert of het resultaat klopt met je verwachtingen;
afhankelijk van het resultaat sturen je de ene of de andere LED aan.

5. Voor het testen van het resultaat gebruiken we een *function node*.

   * configureer de function node:
   * 2 *outputs* (!)
   * *function*:

.. code-block:: JavaScript

  var title = msg.payload[0] || "";
  if (title == "Informatica is de Toekomst.") {
      result = [{payload: title}, null];
  } else {
      result = [null, {payload: "ERROR"}];
  }
  return result;

Door op te geven dat de function node 2 outputs heeft,
krijgt de figuur 2 output-bolletjes.
Je krijgt voor elke output een flow,
die we hier gebruiken om de ene of de andere LED aan te zetten.
Het resultaat van de functie bestaat uit een array van twee elementen,
één voor elke flow.
Merk op dat het resultaat de vorm heeft ``[msg, null]`` of ``[null, msg]``:
het bericht komt in de ene of in de andere flow,
een ``null`` resultaat wordt niet verder verstuurd.

*Dit is een veel gebruikte aanpak in zo'n flow-taal:
een "if-statement" vertaal je zo in twee verschillende flows.*

6. Verbind in elke flow een template-node:

   * configureer template node (Led 1 on, led 0 off):
   * *format*: Plain text
   * *syntax highlight*: JSON
   * *template* ``{"0": {"dOut": 0}, "1": {"dOut": 1}}``
   * configureer template node (Led 0 on, led 1 off):
   * *format*: Plain text
   * *syntax highlight*: JSON
   * *template* ``{"0": {"dOut": 1}, "1": {"dOut": 0}}``

7. Verbind de template node outputs met een debug-node
8. Deploy

Test de flow.
De site zal meestal "up" zijn, je krijgt dat maar één output te zien.
Suggestie: voeg een extra inject-node toe aan de input van de function-node,
om ook het andere resultaat te testen.

9. Verbind de template nodes met een MQTT output-node:

   * configureer de MQTT broker:
   * *Server*: ``infvopedia.nl``, *Port*: 1883
   * Server-Security - *Username*: ``user``, *Password*: ``pwd``
   * *Topic*: ``node/xxx/actuators``

Vul hierin voor ``user``, ``pwd`` de gegevens van de server (broker) in.
En voor ``xxxx`` de node-ID van je IoT-knoop

10. Deploy

Je kunt de flow activeren met de inject-node aan het begin.

11. Pas de inject-node aan het begin van de flow aan
    zodat deze elke 10 minuten een een output geeft.
12. Deploy.
