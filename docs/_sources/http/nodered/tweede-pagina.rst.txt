Een tweede pagina
-----------------

De volgende stap is het maken van een tweede pagina voor je website.

1. Kopieer de flow met de 3 nodes: http-input, template, http-output.
   Hiervoor kun je in NodeRed Copy-Paste gebruiken: (i) selecteer de nodes;
   (ii) Copy; (iii) Paste.
2. Configureer de tweede http-input-node, met *URL*: ``my2ndpage``.
   Als *method* laat je ``GET`` staan. En "Done".
3. Configureer de template-node, en vul als *template* in:

.. code-block:: html

  <!doctype HTML>
  <html>
    <head>
      <title>My 2nd page</title>
    </head>
    <body>
      <h1>Mijn tweede pagina</h1>
    </body>
  </html>

"Done" en "Deploy".

4. Controleer in een browser-venster of deze URL werkt.
   (Bijvoorbeeld: ``https://anna.fred.sensetecnic.com/api/my2ndpage``)
5. Maak nu een link van deze pagina naar de vorige.
   Pas de template-tekst van de template node daarvoor aan,
   en voeg toe onder ``<h1>...</h1>``:

Voor NodeRed via FRED:

.. code-block:: html

  <p>
    Dit is mijn tweede webpagina.
    De eerste vind je via deze link:
    <a href="/api/mypage">Home page<a>
  </p>

*Opmerking*: in deze html-code gebruiken we de URL ``/api/mypage``.
Dit is nodig voor de FRED-versie.
Voor andere NodeRed-installaties gebruik je als URL: ``/mypage``.

"Done" en "Deploy".

Bezoek deze pagina in de brower,
en controleer of de link naar de homepagina werkt.

6. Voeg op dezelfde manier een link toe van je eerste pagina naar je tweede.
   Controleer of deze werkt.

Je hebt nu een website met twee pagina's die onderling verbonden zijn.

Je kunt de tekst van de pagina's zo groot maken als je wilt.
Vaak is het handig om grotere teksten in een bestand op te slaan.
Dit kun je dan inlezen via de file-node;
in FRED is deze helaas niet beschikbaar.
