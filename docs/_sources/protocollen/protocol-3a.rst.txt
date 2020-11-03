Het end-to-end principe
-----------------------

.. figure:: HTTP-IP-stack-NAT.png
  :width: 800px
  :align: center

  De internet-protocol stack


Hierboven zie je een voorbeeld van de keten van internet-verbindingen voor het web.
Je ziet welk deel van de internet-stack in welke apparaten aanwezig is.

* in de apparaten *in het netwerk* vind je alleen de onderste twee lagen van de internet-stack;
* de toepassingenlaag (en de transportlaag (*)) vind je alleen in de eindapparaten;

De toepassingen vind je alleen in de eindapparaten:
het netwerk is onafhankelijk van de toepassingen, en dus *universeel*.

Dit betekent dat iedereen nieuwe toepassingen kan bedenken,
met de bijbehorende protocollen.
Je hebt daarvoor van niemand toestemming nodig.
Zo zijn in de loop van de tijd bijvoorbeeld het web, internet-telefonie, Skype,
app-diensten e.d. toegevoegd, en later IoT-protocollen zoals MQTT.

Door dit universele karakter is het internet een *convergerend netwerk*:
allerlei toepassingen waar vroeger gespecialiseerde netwerken voor waren,
zoals telefonie en (kabel)tv, worden tegenwoordig via het internet gerealiseerd.
Je hoeft dan geen aparte verbindingen voor die verschillende toepassingen aan te leggen,
en kunt ook de toepassingen van de toekomst hiervan gebruik laten maken.
Ook speciale netwerken voor besturing e.d. kun je vervangen door
internet-verbindingen.

*Opmerking.* sommige apparaten in het netwerk gebruiken ook de transportlaag,
om pakketten te filteren (firewall), of om de adresgegevens aan te passen (NAT-router).
Voor het functioneren van het netwerk maakt dit geen verschil.

Een voorbeeld van een netwerk waarbij de toepassing sterk met het netwerk verweven is,
is het klassieke telefoonnetwerk.
Door gebruik te maken van eigenschappen van de telefonie-toepasssing,
zoals het gebruik van spraak, de duur van gesprekken, afwisseling van sprekers,
enz., is het netwerk geoptimaliseerd en zijn de telefoontoestellen
zo simpel mogelijk gehouden.
Voor het internet speelt die laatste overweging geen rol:
de kleinste computer is al krachtig genoeg voor de meeste protocollen,
inclusief datacompressie, versleuteling e.d..


* https://en.wikipedia.org/wiki/End-to-end_principle

.. rubric:: toetsvragen

.. mchoice:: prot-e2e-mc-1
  :answer_a: de toepassingenlaag alleen in de eindapparaten aanwezig is
  :answer_b: de eindapparaten alleen de toepasssingenlaag bevatten
  :answer_c: de internetlaag alleen in de eindapparaten aanwezig is
  :answer_d: de toepassingenlaag in alle apparaten tussen de eindapparaten aanwezig is
  :correct: a

  Het end-to-end principe van het internet houdt in dat:

.. mchoice:: prot-e2e-mc-2
   :answer_a: een eigen internet-toepassing kunt maken
   :answer_b: een eigen protocol voor een toepassing kunt gebruiken
   :answer_c: zelf domeinnamen kunt uitdelen
   :answer_d: zelf IP-adressen kunt uitdelen
   :answer_e: berichten versleuteld over het internet kunt sturen
   :correct: a,b,e

   Het end-to-end principe van het internet heeft als gevolg(en) dat je zonder toestemming van anderen:

.. mchoice:: prot-e2e-mc-3
   :answer_a: dat het internet steeds meer gespecialiseerde netwerken vervangt.
   :answer_b: dat allerlei gespecialiseerde netwerken een internet-functionaliteit krijgen.
   :answer_c: dat voor het internet steeds minder verschillende verbindingen (media) nodig zijn.
   :answer_d: dat in het internet allerlei verschillende soorten verbindingen (media) samenkomen.
   :correct: a

   Het internet als convergerend netwerk betekent:

..
