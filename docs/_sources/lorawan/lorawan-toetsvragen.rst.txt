Toetsvragen LoRaWan
-------------------

.. mchoice:: mc-6-1-1
   :answer_a: parkeerplaatsbewaking
   :answer_b: slimme deurbel met camera
   :answer_c: besturing van verlichting thuis (domotica)
   :answer_d: besturing van straatverlichting
   :answer_e: GPS-tracker van vee
   :correct: b,c

   Voor welke van de onderstaande toepassingen is LoRaWan *geen* geschikte technologie?
   Verklaar je antwoord(en) hieronder.

.. shortanswer:: short-6-1-1

  Verklaar de antwoord(en) die je hierboven gegeven hebt.

..

.. mchoice:: mc-6-1-2
   :answer_a: luchtkwaliteitsmeting
   :answer_b: afluisterapparatuur
   :answer_c: besturing van een robot
   :answer_d: GPS-tracker van snelle voertuigen
   :correct: b,c,d

   Voor welke van de onderstaande toepassingen is LoRaWan *geen* geschikte technologie?
   Verklaar je antwoord(en) hieronder.

.. shortanswer:: short-6-1-2

  Verklaar de antwoord(en) die je hierboven gegeven hebt.


.. shortanswer:: short-6-1-3

  Met de LoRaWan gateway op school kun je op een bepaald moment berichten ontvangen van een LoRa IoT-knoop op 30 km afstand.
  Betekent dit dat je alle LoRa IoT-knopen binnen die straal kunt ontvangen? Motiveer je antwoord.

.. mchoice:: mc-6-1-4
    :answer_a: grote antenne’s op de IoT-knopen
    :answer_b: groot vermogen van de radiozenders op de IoT-knopen
    :answer_c: grote batterijen in de IoT-devices
    :answer_d: een lage bitrate (bits/s)
    :correct: d

    Met LoRa is dataverkeer met IoT-knopen op grote afstanden (tot kilometers ver) mogelijk.
    Wat maakt het mogelijk om die afstanden te overbruggen?

.. mchoice:: mc-6-1-5
    :answer_a: zenden met beperkt vermogen (typisch max. 25 mW)
    :answer_b: beperkte zendtijd (duty-cycle) - typisch max. 1%
    :answer_c: maximale grootte van de antenne’s
    :answer_d: zenden alleen met een zendvergunning
    :answer_e: beperkte bitrate (bits/s)
    :correct: a,b

    LoRa maakt gebruik van vrije (gratis te gebruiken) radiobanden.
    Welke beperkingen zijn opgelegd aan het gebruik van deze radiobanden?

.. shortanswer:: short-6-1-6

  Er zijn veel meer LoRaWan IoT-device met sensoren dan met actuatoren.
  Noem een aantal redenen waarom dit zo is.

.. dragndrop:: dd-6-1-7
  :match_11: IoT-device|||meet en bestuurt de fysieke omgeving met sensoren en actuatoren
  :match_12: LoRaWan gateway|||verbindt IoT-devices met het LoRaWan netwerk
  :match_13: LoRaWan server|||verbindt het LoRaWan netwerk met toepassings-servers
  :match_14: LoRa|||long range radio
  :match_15: LoRaWan|||netwerk en netwerkprotocol op basis van LoRa
  :match_16: Sensor|||onderdeel van een IoT-device voor het meten van de omgeving
  :match_17: Wan|||Wide Area Network

  Koppel de begrippen aan hun omschrijving

.. mchoice:: mc-6-1-8
   :answer_a: IoT-devices
   :answer_b: LoRaWan-gateway
   :answer_c: LoRaWan Network server
   :answer_d: TTN Application server
   :correct: a,d

   LoRaWan wordt veilig ("secure") genoemd vanwege de end-to-end encryptie.
   Wat betekent dit?
   Welke apparaten kunnen de berichten ontsleutelen?

.. mchoice:: mc-6-1-9
   :answer_a: een groter bereik
   :answer_b: een kleiner bereik
   :answer_c: meer berichten per uur mogelijk
   :answer_d: minder berichten per uur mogelijk
   :answer_e: kortere batterij-levensduur voor het IoT-device
   :correct: a,d,e

   LoRa-radioberichten verstuurd met SF12 hebben ten opzichte van SF7-berichten de volgende eigenschappen:

.. dragndrop:: dd-6-10
   :match_11: lagere bitrate|||groter bereik
   :match_12: grotere airtime|||groter energieverbruik per bericht
   :match_13: hogere bitrate|||kleiner bereik
   :match_14: kleinere airtime|||meer berichten per uur

   Je gebruikt een radio met een bepaalde frequentie en een bepaald maximaal zendvermogen.
   Welke combinaties van eigenschappen gelden hiervoor?
