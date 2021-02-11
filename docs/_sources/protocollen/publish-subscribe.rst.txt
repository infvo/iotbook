Publish/subscribe
-----------------

.. figure:: MQTT-0.png
   :width: 400 px
   :align: center

   Publish-subscribe interactie (MQTT)

Het IoT-protocol MQTT gebruikt een *publish-subscribe* interactie,
waarbij een *broker* als tussenschakel fungeert tussen de clients:

* een client publiceert (*push*) een bericht met een bepaald *topic* naar de broker,
* de broker stuurt (*push*) een ontvangen bericht door naar alle clients die op dit topic geabonneerd zijn.

Zowel de IoT-knopen en de controllers en apps zijn clients van de MQTT-broker:
voor de broker zijn deze gelijkwaardig.

Een publish-subscribe interactie kun je vergelijken met een abonnement op een krant of tijdschrift:
zodra er een nieuw exemplaar gepubliceerd is wordt dat naar alle abonnees verspreid.
