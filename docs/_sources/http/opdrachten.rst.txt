HTTP-opdrachten
===============

.. bij HTTP

.. rubric:: Het HTTP protocol

De eerste opdrachten hebben betrekking op het HTTP-protocol in het algemeen.
Voor deze opdrachten heb je geen extra hardware nodig.

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


.. rubric:: HTTP in het Internet of Things

In de opdrachten gebruik je een IoT-knoop met daarop een webserver.
**Voor deze opdrachten heb je IoT-hardware nodig:
deze werken niet met gesimuleerde IoT-knopen.**
Via een computer (browser) in hetzelfde netwerk als deze IoT-knoop maak je contact met deze webserver:
daarmee vraag je sensorwaarden van de IoT-knoop op en bestuur je de actuatoren (LEDs) van de knoop.

.. admonition:: Wat heb je nodig

  * IoT-knoop met LED en webserver-software (``wifi-node-x(d)``);
  * computer of smartphone met browser;

.. _IoT-knoop AP:

IoT-knoop als Access Point
--------------------------

In het eerste voorbeeld gebruik je een IoT-knoop in Access Point mode.
Het gaat bij deze opdracht om het uitlezen van de sensorwaarden van de IoT-knoop.
In deze opdracht verander je de configuratie niet!

1. Start de IoT-knooop op in Access Point mode;
   zie :ref:`Configureren` stap 1.
2. Maak met je computer of je smartphone contact met het WiFi-netwerk van deze IoT-knoop;
   zie :ref:`Configureren` stap 2.
3. Geef in de browser als URL het IP-adres van de IoT-knoop: ``http://192.168.4.1``.
   Je krijgt nu de homepagina van de IoT-knoop te zien.
4. Bestudeer de sensorwaarden in deze homepagina.
   Adem of blaas voorzichtig op de temperatuur/luchtvochtigheidssensor van de IoT-knoop.
   Veranderen de sensorwaarden in deze homepagina?
5. Ververs de pagina in de browser.
   Veranderen de sensorwaarden in de pagina?
6. Beredeneer het gedrag van de browser/IoT-knoop dat je bij (4) en (5) gezien hebt.
7. Ga na wat het IP-adres van je eigen computer is in het netwerk van de IoT-knoop.
   (Dit vind je bijvoorbeeld via de netwerkinstellingen op je computer.)

**Opmerkingen**.

* Je kunt met meerdere (max. 4) computers contact maken met een ESP8266-access point.
* breng niet teveel IoT-knopen tegelijk in access-point mode: dat kan het andere WiFi-verkeer verstoren.
* via het WiFi-netwerk van de IoT-knoop heeft je computer geen verbinding met het internet. (Ga dit na.)
* het herhaald versturen van een verzoek aan de (web)server om te zien of er iets veranderd is heet "polling".

LED-besturing (1)
-----------------

In deze opdracht gebruik je de IoT-knoop in Access Point mode,
zie de stappen 1 t/m 3 van de vorige opdracht.

De IoT-knoop heeft een eenvoudige manier om de LED aan en uit te zetten:

1. Vul als URL in de browser in: ``http://192.168.4.1/ledon``.
   Controleer dat de LED aan gaat.
2. Vul als URL in de browser in: ``http://192.168.4.1/ledoff``.
   Controleer dat de LED uit gaat.
3. Leg uit waarom er twee verschillende URLs zijn,
   in plaats van één enkele die de LED omschakelt van aan naar uit en omgekeerd.
   (*Hint*: zijn de acties *idempotent*? is "omschakelen" een *idempotente* actie?)

De functies in de ESP8266-software voor ``ledon`` en ``ledoff`` zijn:

.. code-block:: c++

  void handleLedOn() {
    digitalWrite(led0, HIGH);
    sendHTMLdoc();
  }

  void handleLedOff() {
    digitalWrite(led0, LOW);
    sendHTMLdoc();
  }

De functie ``digitalWrite`` stuurt de led aan.
De functie ``sendHTMLdoc()`` stuurt de het homepagina-document naar de browser.
Zoals je ziet kun je met een URL soms heel direct hardware (actuatoren) besturen.

Er is nog een manier om de LED aan- en uit te schakelen: dit komt in opdracht (x) aan de orde.

Ontwikkelaarstools(2)
---------------------

Via de browser-ontwikkelaarstools bestudeer je de interactie tussen de browser en de IoT-knoop als webserver.
Gebruik de IoT-knoop in Access Point mode, met als IP-adres 192.168.4.1,
zie stap 1 t/m 3 van opdracht :ref:`IoT-knoop als Access Point<IoT-knoop AP>`.
Voor het gebruik van de browser-ontwikkelaarstools,
zie opdracht :ref:`Ontwikkelaarstools<browser-developer-tools>`.

(1) Bestudeer het http-protocol tussen de browser en de IoT-knoop-webserver via de tab "Netwerk".
    Door op een element links te klikken krijg je de gegevens over de interactie voor dat element.

    (a) Ga na wat het IP-adres is van de webserver (headers/kopteksten).
    (b) Welke informatie krijgt de browser over de webserver? (headers)
    (c) Welke informatie krijgt de webserver over de browser? (headers)
    (d) Voer als URL in de browser in: ``http://192.168.4.1/ledon``.
        Wat is het http-request (URL en method - GET, POST, etc.) dat de browser verstuurt?
    (e) In de home-pagina van de IoT-knoop kun je via *buttons* de led aanzetten.
        Wat is het http-request (URL, method, en parameters) dat de browser daarbij verstuurt?
        (In opdracht :ref:`LED-besturing(2)<led-besturing-2>` wordt dit verder uitgewerkt)

(2) Bestudeer de timing van het http-protocol, via de tab "Netwerk"

    (a) wat is de totale tijd tussen het versturen van het request met URL: ``http://192.168.4.1/ledon``,
        en het ontvangen response van de server?
        Dit is de end-to-end *latency* van de interactie tussen browser en server.
    (b) uit welke onderdelen bestaat deze tijd?
    (c) verstuur het request een aantal keren kort achter elkaar. Verandert de timing?
        Welk onderdeel verandert vooral? Kun je dit verklaren?

(3) Bestudeer de brontekst van de homepagina van de IoT-knoop website, via de tab "Netwerk" of "Documenten".

    (a) Wat is de grootte van het html-document (in bytes)?
    (b) Welk element in het html-document bevat de URL voor het aan- en uitzetten van de LED?
        Geef de beginregel hiervan.


.. _led-besturing-2:

LED-besturing(2)
----------------

Naast de eenvoudige URLs ``/ledon`` en ``/ledoff`` is er nog een manier om de LED aan- en uit te schakelen:
via de *buttons* op de homepagina.
Het gebruik van deze buttons resulteert in het opsturen van een formulier naar de webserver.


1. Klik op de "on"-button. De LED op de IoT-knoop brandt nu (als het goed is).
   Welke URL verschijnt nu in het URL-venster? (Het kan nodig zijn om dit te selecteren.)
2. Laad de pagina opnieuw. (De browser heeft hiervoor een "refresh" of "reload"-knop, meestal een cirkel-pijlje.)
   Wat is de reactie van de browser? Waarom geeft de browser deze reactie?
3. Soms wordt een webpagina ge-cached, in de browser, of in de keten tussen de browser en de server.
   Een http GET-request bereikt dan niet altijd de server.
   Ga na wat dit betekent voor (a) de aanpak met de eenvoudige URLs ``/ledon`` en ``ledoff``;
   (b) het gebruik van een formulier met een POST-request, zoals hierboven?
4. Kun je het formulier versturen door met de hand een URL in de browser in te vullen?

De beide buttons zijn onderdeel van een *webformulier*.
De browser stuurt dit formulier via een HTTP-POST-request naar de server,
met als parameter het naam-waarde-paar: ``on=1`` voor "aan"; en ``on=0`` voor "uit".

De server verwerkt het verzoek als volgt:

.. code-block:: c++

  void handleLed0() {
    if (server.method() == HTTP_POST) {
      for (uint8_t i=0; i < server.args(); i++) {
        if (server.argName(i) == "on") {
          String argvalue = server.arg(i);
          if (argvalue == "0") {
            digitalWrite(ledPin, LOW);
          } else if (argvalue == "1") {
            digitalWrite(ledPin, HIGH);
          }
        }
      }
    }
    sendHTMLdoc();
  }

  server.on("/", handleRoot);
  server.on("/leds/0", handleLedOn);

Adresseren van de webserver
---------------------------

Als je met een browser de webserver van de IoT-knoop wilt benaderen,
moeten ze in hetzelfde lokale netwerk verbonden zijn.
Bovendien moet je het IP-adres van de IoT-knoop kennen.
In het geval van de IoT-knoop als access point ligt dat vast.
Maar als de IoT-knoop deel uitmaakt van een netwerk van een ander access point moet je het IP-adres zien te achterhalen.

Dit kan op verschillende manieren.
Probeer één of meer van de onderstaande methodes uit.
Ga na of het IP-adres klopt door de homepagina van de IoT-knoop in de browser te laten zien.

(a) Sommige IoT-knopen hebben een display: bij het opstarten meldt de knoop het IP-adres op het display;
(b) Gebruik een programma dat een netwerk-scan doet;
    zie bijvoorbeeld  https://geekflare.com/network-scanner/
    of https://www.softwaretestinghelp.com/network-scanning-tools/ voor een lijst.
    Naast "nmap" (commandoregel) of "zenmap" (GUI-versie) zijn
    "Angry IP Scanner" en "Advanced IP Scanner" goede mogelijkheden.
    Er zijn ook mobiele apps voor het scannen van het lokale netwerk,
    bijvoorbeeld "Network Analyser van Jiri" of "Fing".
    Een netwerkscanner geeft je niet alleen het IP-adres,
    maar ook het volledige MAC-adres van de IoT-knoop.
(c) Een IoT-knoop meldt via de USB-verbinding bij het opstarten het IP-adres (en het MAC-adres).
    Om dit te bekijken heb je nodig:
    (i) de USB-driver voor de IoT-knoop (CHG340);
    (ii) een programma om een seriële verbinding met de IoT-knoop te maken,
    bijvoorbeeld de Arduino IDE (Seriële Monitor).

Een netwerkscanner geeft je ook inzicht in alle apparaten die aan het netwerk verbonden zijn.
Dit is vooral aan te raden voor een thuisnetwerk: herken je alle devices in het netwerk?

Er is nog een andere methode, die gebruik maakt van een eenvoudige DNS-service voor lokale netwerken:
mDNS (multicast DNS).
Deze aanpak laten we hier buiten beschouwing, omdat deze niet door alle browsers ondersteund wordt.

Een eigen voorbeeld
-------------------

Zoek een apparaat in je omgeving dat via een webinterface bediend kan worden.
Enkele suggesties: router; netwerkprinter; IoT-gateway (zoals de Hue Bridge).

1. Maak een schermafdruk van een bedieningspagina van dit apparaat.
2. beschrijf de karakteristieken van dit apparaat:

   a) is de webserver altijd online?
   b) hoe kun je de webserver vinden?
   c) hoe krijg je veranderingen in de toestand van het apparaat gemeld?
   d) moet je daarvoor de pagina in de browser verversen?
