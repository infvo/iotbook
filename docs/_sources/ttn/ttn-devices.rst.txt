TTN - devices
-------------

.. figure:: images/TTN-normal-device.png
  :width: 400px
  :align: center

  Koppelen van device en application

..

In LoRaWan hoort een IoT-device bij precies één application.
Je koppelt een IoT-device aan een application door over en weer de EUI's in te vullen.
Daarnaast moeten beide, IoT-device en application, dezelfde Application Key gebruiken voor het versleutelen van de payload.

Tenslotte moet je nog beslissen op welke manier het device in het netwerk geactiveerd wordt (activation).
Je kunt kiezen tussen OTAA (Over the air activation), de default; of ABP (Activation by personalization).
In het onderstaande gaan we uit van OTAA.
Dit is in de praktijk de meeste gebruikte (en veiligste) variant.

**Device configureerbaar/programmeerbaar.**
Als je het IoT-device kunt configureren of programmeren,
dan kun je eerst in de application de device-gegevens invullen of aanmaken.
Soms heeft een device een device-EUI, dit vind je meestal op een sticker op het apparaat:
dit kun je dan invullen in de application.
Als je device geen EUI heeft laat je dit genereren, via de knop links van het device-EUI-veld.

Bij het registreren van het device in het TTN-console wordt een App-key aangemaakt,
voor de end-to-end encryptie van de payload tussen het device en de application.

Vervolgens kun je de gegevens van het device en van de application overnemen in het device.

Hieronder zie je een voorbeeld van de Arduino-code van een device waarin de gegevens uit de application overgenomen zijn.
In dit voorbeeld is de device-EUI al in de hardware voorgeprogrammeerd.
.

.. code-block:: c

  const char *appEui = "70B3D57ED000A34B";
  const char *appKey = "A0794F783C49DC2EBECEAA3917676A8A";

..

.. figure:: images/TTN-Dragino-device.png
  :width: 400px
  :align: center

  Koppelen van device en application

**Device voorgeconfigureerd.**
Soms is het device voorgeprogrammeerd/geconfigureerd.
In dat geval vind je op een sticker bij het apparaat naast de
Device-EUI ook de App-EUI en de App-key.
Deze gegeven moet je dan bij het registreren van het device in de TTN-console overnemen.
(Een application kan meerdere App-EUIs hebben: je kunt de App-EUI van het device toevoegen.)

Het eindresultaat is weer als in de figuur hierboven,
waarin de de application en het device over en weer dezelfde gegevens hebben.



* https://www.thethingsnetwork.org/docs/devices/registration.html
* https://www.youtube.com/watch?v=tapK6EINx1k
