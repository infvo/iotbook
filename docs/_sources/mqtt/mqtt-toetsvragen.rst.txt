Toetsvragen
===========

.. dragndrop:: h4-dd-1
  :match_11: MQTT|||Application layer
  :match_12: TCP|||Transport layer
  :match_13: IP|||Internet layer
  :match_14: WiFI|||Link layer

  Plaats het protocol in de juiste laag.
  Let op de namen van de lagen, de volgorde is niet noodzakelijk die in de stack!


.. dragndrop:: h4-dd-2
  :match_11: broker|||ontvangt MQTT berichten en stuurt deze door naar geabonneerde clients
  :match_12: topic|||identificeert een stroom berichten
  :match_13: publish(M,T)|||client publiceert een bericht naar een topic
  :match_14: subscribe(T)|||client abonneert zich op een topic

.. mchoice:: h4-mc-3
  :answer_a: ``node/1234/sensors``
  :answer_b: ``node/+/sensors``
  :answer_c: ``node/379/actuators``
  :answer_d: ``node/sensors``
  :answer_e: ``node/1234``
  :correct: a,c

  Welke topics passen bij het wildcard-patroon ``node/+/+`` ?

.. mchoice:: h4-mc-4
  :answer_a: opslaan van JavaScript (cq. Python enz.) objecten in een database
  :answer_b: communiceren van JavaScript objecten
  :answer_c: afdrukken van JavaScript objecten
  :answer_d: opslaan van JavaScript objecten in een JavaScript array
  :answer_e: bewerken van JavaScrip objecten
  :correct: a,b,c

  Voor welk soort gebruik is JSON handig?

.. mchoice:: h4_mc-5
  :answer_a: 1-op-1 communicatie naar een andere client
  :answer_b: 1-op-N communicatie (broadcast) naar andere clients
  :correct: b

  Het publiceren van een MQTT-bericht naar een topic kun je beschouwen als:

.. parsonsprob:: h4_pn_6

   Zet de onderdelen van de MQTT-interactie in de juiste volgorde.
   -----
   client B: subscribe("chat")
   client A: publish("hallo?", "chat")
   broker: push("hallo?", "chat") naar B
   client B: ontvang("hallo?", "chat")

.. parsonsprob:: h4_pn_7

   Stapel de protocollen op de juiste manier, met het toepassingsprotocol bovenaan.
   -----
   MQTT
   TCP
   IP
   WiFi
