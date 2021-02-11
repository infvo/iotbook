HTTP-opdrachten
===============

.. bij HTTP

.. _browser-developer-tools:

Ontwikkelaarstools
------------------

.. admonition:: Browser-ontwikkelaarstools

  Moderne browsers beschikken over *ontwikkelaarstools* voor ontwikkelaars van websites.
  Met deze tools kun je de interactie tussen de browser,
  de webserver en de html/css/javascript-bestanden volgen.

  De manier waarop je deze tools vindt verschilt per browser:

  * Chrome (OS X): Weergave->Ontwikkelaar->Ontwikkelaarstools
  * Chrome (Windows 10): Meer hulpprogramma’s->hulpprogramma’s voor ontwikkelaars (of “F12”)
  * FireFox: Extra->Webontwikkelaar->Hulpmiddelen in-/uitschakelen
  * Safari: Ontwikkel->Toon webinfovenster (je moet in de voorkeuren instellen dat dit menu getoond wordt).

Via de browser-ontwikkelaarstools bestudeer je de interactie tussen de browser en een webserver.
Je kunt een willekeurige webserver gebruiken,
bijvoorbeeld ``https://ieni.org`` of de website van je school.

(1) Bestudeer het http-protocol tussen de browser en een webserver via de tab "Netwerk".
    Door op een element links te klikken krijg je de gegevens over de interactie voor dat element.
    *Let op*: als er onder de tab "Netwerk" geen gegevens staan,
    ververs dan de pagina in het URL-venster met de "refresh"-knop,
    of open een andere (sub)pagina in hetzelfde venster.

    (a) Wat zijn de method en het pad-deel van URL, in het request?
    (b) Wat is het IP-adres van de webserver? (headers/kopteksten - tab).
    (c) Welke informatie krijgt de browser over de webserver? (response-headers)
    (d) Welke informatie krijgt de webserver over de browser? (request-headers)
    (e) Welke payload-types vraagt de browser? (request-headers)
    (f) Wat is het type en de lengte van de payload? (response-headers)

(2) Bestudeer de timing van het http-protocol, via de tab "Netwerk"

    (a) wat is de totale tijd tussen het versturen van het verzoek (request),
        en de ontvangen response van de server?
        Dit is de end-to-end *latency* van de interactie tussen browser en server.
    (b) uit welke onderdelen bestaat deze tijd?
    (c) Verstuur de aanvraag nog een keer. Wat verandert er?
        (Zoek op het web wat de combinatie GET en 304 betekent, als je die krijgt.)

cURL en Postman
---------------

Met het commandoregel-programma ``curl`` (https://curl.haxx.se) kun je willekeurige HTTP-verzoeken sturen.
Dit is een manier om het HTTP-protocol te leren kennen en om web-APIs te verkennen.
(Zie verderop.)
Door curl-opdrachten in scripts te gebruiken kun je allerlei HTTP-transacties automatiseren.

Er zijn ook online tools waarmee je dit kunt, bijvoorbeeld ``https://reqbin.com/curl``.
Een nadeel hiervan is dat je daarmee alleen requests in het publieke internet
kunt sturen, niet in het lokale netwerk.

Met het programma Postman (Postman.com) kun je hetzelfde als met curl,
maar uitgewerkt in een desktop-programma, met de nodige extra faciliteiten.
Tip: Je kunt in Postman de "raw" requests en responses zien, in het console.
Dit krijg je via menu View->Show Postman Console.
Selecteer in het console "Show raw log".

De onderstaande opdrachten kun je zowel met curl, reqbin.com/curl als met Postman uitvoeren.

(1) Stuur een GET-request naar een website naar keuze, bijvoorbeeld ieni.org
    of de website van je school.

    curl: ``curl -D - https://ieni.org``

    Je krijgt in dit geval in de uitvoer zowel de headers als de payload te zien.
    Als je ``curl -I https://ieni.org`` gebruikt, krijg je alleen de headers.
    (Http HEAD method).

    OF:

    Postman: ``GET https://ieni.org`` (SEND)

    Bestudeer de headers van de response.
    Wat is het Content-Type van de payload?
    En wat is de Content-Lenght (als die er is)?

(2) Probeer een URL te vinden die verwijst naar een figuur (foto o.i.d.).
    Voer daarvoor bovenstaande opdrachten uit.

    Wat is nu het Content-Type van de payload?
    En wat is de Content-Length (als die er is)?

(3) Probeer een URL te vinden met een JSON payload.
    Een voorbeeld hiervan is https://adafruit.com/api/quotes.php.

    Wat is nu het Content-Type van de payload?
    En wat is de Content-Length (als die er is)?
