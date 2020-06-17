Een tweede pagina
-----------------

.. figure:: Nodered-hello-and-welcome.png
   :width: 600 px
   :align: center

   NodeRed http flow met 2 pagina's

De volgende stap is het maken van een tweede pagina voor je website.
Hiervoor breid je de flow van de vorige opdracht uit met een *kopie*
van de eerste flow.

1. Kopieer de flow met de 3 nodes: http-input, template, http-output.
   Hiervoor kun je in NodeRed Copy-Paste gebruiken: (i) selecteer de nodes;
   (ii) Copy; (iii) Paste.
2. Configureer de tweede http-input-node, met *URL*: ``welcome``,
   en *method*:  ``GET``.
3. Configureer de template-node, en configureer (als Mustache template):

   1. *Template*: ``<h1>Welcome!<h1>``

4. "Deploy"
5. Controleer in een browser-venster of deze nieuwe URL werkt.
   (Bijvoorbeeld: ``https://anna.fred.sensetecnic.com/api/welcome``)
6. Breid de webpagina uit met een link naar de eerste pagina.

   1. Voeg toe aan *Template*: ``<a href="/api/hello">Hello</a>``.

*Opmerking*: in deze html-code gebruiken we de URL ``/api/hello``.
Dit is nodig voor de FRED-versie.
Voor andere NodeRed-installaties gebruik je als URL: ``/hello``.

7. "Deploy".
8. Bezoek deze pagina in de brower, en controleer of de link naar de homepagina werkt.
9. Voeg op dezelfde manier een link toe van je eerste pagina naar je tweede.
   Controleer of deze werkt.

Je hebt nu een website met twee pagina's die onderling verbonden zijn.

**Opmerking** Het laatste deel van deze flows is gelijk:
je kunt hiervoor ook één http-response-node gebruiken,
die je met de outputs van beide template-nodes verbindt.

Je kunt de tekst van de pagina's zo groot maken als je wilt.
Vaak is het handig om grotere teksten in een bestand op te slaan.
Dit kun je dan inlezen via de file-node;
in FRED is deze helaas niet beschikbaar.
