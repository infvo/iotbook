Communicatie: wat heb je nodig?
===============================

Voor dit soort IoT-toepassingen kun je al vaak snel een eerste analyse maken wat je nodig hebt voor de communicatie.
De volgende vragen moet je daarbij proberen te beantwoorden:

1. welke data (denk je) sturen de IoT-devices naar de toepassing?
   Kun je deze gegevens in getallen uitdrukken? Met welk bereik (minimum, maximum)?
   En met welke precisie?
2. welke sensoren (en/of actuatoren) denk je dat hiervoor nodig zijn?
3. hoe vaak moet deze data verstuurd worden?
4. hoe erg is het als er eens een bericht van een IoT-device door een gateway gemist wordt?
5. zijn de IoT-devices mobiel?
6. hoe "real time" moeten de sensoren en actuatoren zijn?

*Voorbeeld* Als voorbeeld maken we een analyse van de slimme vuilcontainers:

1. de vuilcontainer moet gegevens opsturen over: vulgraad (volume/percentage, gewicht), temperatuur,
   aantal malen dat de klep geopend is.

   * vulgraad-volume: 0..100%, precisie 5% (20 stappen)
   * vulgraad-gewicht: 0..1000kg, precisie 1kg (1000 stappen)
   * temperatuur: -10..100 graad Celcius, precisie 1', (110 stappen)
   * gebruiksteller: 0..1000, precisie 1 (1000 stappen)

2. mogelijke sensoren:

   * vulgraad-volume: afstandssensor (tussen bovenkant vulling en bovenkant container)
   * vulgraad-gewicht: druk/gewichtsensor (load cel)
   * temperatuur: temperatuursensor
   * gebruiksteller: optisch (onderbreken lichtstraal); magneetcontact (vgl. raamsensor, deursensor)

3. hoe vaak versturen? Eens per 5 tot 10 minuten lijkt ruim voldoende,
   zeker als we ook de historische gegevens en gegevens over evenementen in de buurt meenemen
   (gebruik van externe cloud-diensten, naast de sensoren).

4. als de berichten eens per 5 minuten verstuurd worden is het niet erg als er eens een bericht onbreekt.

5. de vuilcontainers zijn niet mobiel (...maar, je zou ook mobiele containers kunnen hebben).

6. de gegevens hoeven niet erg "real time" te zijn, het is niet erg als de data een paar minuten oud is.

Aan de hand van deze informatie kunnen we al zien dat er erg weinig data van de vuilcontainer naar
de controller opgestuurd hoeft te worden: een paar kleine getallen (1 of 2 bytes elk), elke 5 of 10 minuten.
Dit betekent dat we een eenvoudige, zuinige radio kunnen gebruiken, zoals LoRa.
