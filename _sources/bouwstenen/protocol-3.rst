Internet-protocolstack
----------------------

.. figure:: Internet-stack.png
  :width: 800px
  :align: center

  De internet-protocol stack

In de ICT kom je bijna overal de volgende 3-lagen tegen: hardware (fysieke laag),
systeemsoftware (systeemlaag), en toepassingen (toepassingenlaag).

De systeemlaag zorgt voor de scheiding tussen de hardware en de toepassingen.
Hierdoor kun je de hardware veranderen zonder dat je in de toepassingen iets hoeft aan te passen.
En je kunt nieuwe toepassingen maken zonder dat er in de hardware iets hoeft te veranderen.
De evolutie en variatie in de hardware is daardoor onafhankelijk van de evolutie en variatie in de toepassingen.

De toepassingenlaag van de internet-stack bevat alle toepassingen,
zoals e-mail (SMTP, POP3, IMAP), file transfer (FTP), en het web (HTTP).
Dit zijn voorbeelden van *open standaarden* waar iedereen gebruik van kan maken.
Daarnaast kan iedereen zijn eigen internet-toepassingen maken, zoals WhatsApp, Skype, Spotify, enz.
Deze protocollen van deze toepassingen zijn niet open, en zijn alleen te gebruiken met deze toepassingen.

In de internet-protocolstack is de systeemlaag ("TCP/IP") gesplitst in 2 lagen,
de transportlaag ("TCP") en de netwerklaag ("IP").
Het TCP-protocol biedt betrouwbare bytestroom-verbindingen.
Het IP-protocol verzorgt de eigenlijke communicatie in het internet-netwerk,
op basis van best effort pakketcommunicatie.

De fysieke laag kan uit allerlei soorten verbindingen bestaan, bijvoorbeeld:

* bedrade verbindingen: Ethernet (in een lokaal netwerk), coaxkabel (tv-kabelnetwerk);
* draadloze verbindingen: WiFi (in een lokaal netwerk), 4G (mobiel netwerk).
