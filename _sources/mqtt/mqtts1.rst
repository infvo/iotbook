Publish-subscribe
=================

.. figure:: MQTT-0.png
   :width: 400 px
   :align: center

   MQTT: publish/subscribe

MQTT is een zogenaamd *publish/subscribe* protocol.
Clients communiceren hierbij via een broker (makelaar).
De broker heeft alleen als taak om berichten door te sturen.
Een stroom berichten wordt geïdentificeerd door een *topic*.
Door een *subscribe(T)* naar de broker geeft een client aan dat deze de berichten van T wil ontvangen.

In de figuur hebben de clients B en D zich eerder geabonneerd op het topic T.
Client C heeft zich niet op T geabonneerd.

Client A publiceert bericht M met topic T: *publish(T,M)*.
De broker stuurt dit bericht door naar clients B en D: *push(T,M)*,
en niet naar client C.

B of C kan een bericht publiceren naar een topic waarop A geabonneerd is:
er is geen verschil tussen de clients.

  Publish-subscribe (zoals MQTT) is een *symmetrische push*-interactie.

  Client-server (zoals HTTP) is *asymmetrisch*: ligt het initiatief bij de client.
  Een web-client (browser) "trekt" (*pull*) de documenten van de server.

Publish-subscribe geeft een *losse koppeling* tussen de clients:
de clients communiceren via een topic, en weten niet welke clients aan dat topic gekoppeld zijn.
In het bijzonder weet een publisher niet welke clients op het topic geabonneerd zijn.

Ook buiten het Internet of Things kun je de Publish/Subscribe-interactie tegenkomen,
onder andere met allerlei soorten *Message brokers*.

Zie:

* https://en.wikipedia.org/wiki/Publish–subscribe_pattern
* https://en.wikipedia.org/wiki/Message_broker
