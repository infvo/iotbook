MQTT-broker
-----------

.. figure:: MQTT-IoT.png
    :width: 500px
    :align: center

    MQTT als publish-subscribe protocol

Het internet of things is niet zo gestandaardiseerd als het web:
er zijn veel verschillende protocollen waar je uit kunt kiezen.

Een veel-gebruikt IoT-protocol is MQTT (MQ Telemetry Transport): dit biedt beveiligde en (desgewenst) betrouwbare communicatie van berichten.
Voor veel IoT-toepassingen zijn deze berichten vrij klein: enkele tientallen tot enkele honderden bytes.
MQTT kan deze efficiënt verwerken.
MQTT is een zogenaamd *publish/subscribe* protocol.
Een client kan zich abonneren op alle berichten van een bepaald topic (of kanaal).
En een client kan berichten publiceren met een bepaald topic.
De broker zorgt voor het doorsturen van de berichten tussen de clients.
Er is daarbij geen verschil tussen een IoT-knoop, een app of een cloud-service als client.
