HTTP API test
=============

In deze opdracht test je de HTTP-API van een cloud-dienst:
`openweathermap.org <https://openweathermap.org>`_.
Hiervoor is een speciale NodeRed-node gedefinieerd.
Deze moet je misschien eerst installeren:

* In FRED: FRED-menu (links)->Tools-> add or remove nodes
* In een standaard NodeRed: Hamburger menu (rechts)-> Manage Palette
* de node heet: ``node-red-node-openweathermap``

.. figure:: NodeRed-openweathermap-test.png
   :width: 600px
   :align: center

**API-key.** Voor het gebruik van de openweathermap API heb je een API-key nodig.
Daarvoor moet je eerste een (gratis) account aanmaken.
Via de pagina `API-keys <https://home.openweathermap.org/api_keys>`_
kun je een API key aanmaken (of meerdere, als je wilt).

1. Maak de bovenstaande flow.
2. Configureer de inject-node:

   * payload: JSON, waarde: ``{"city":"Amsterdam","country":"NL"}``

3. Configureer de "Change" node:

   * Set ``msg.location`` to ``msg.payload``

4. Configureer de openweathmap-node:

   * *API-key*: ... de key die je eerder gegenereerd hebt.

5. Deploy
6. Test de flow

Als je een fout gemaakt hebt met één van de bovenstaande configuraties
krijg je nu een foutmelding.
Anders zie je het weer in Amsterdam verschijnen.

7. Inspecteer de verschillende velden van het resultaat,
   in het debug-venster.
      
