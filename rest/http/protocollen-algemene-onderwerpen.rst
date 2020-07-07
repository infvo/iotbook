Algemene onderwerpen (**)
-------------------------

.. topic:: 3-lagen model

  In de ICT komen we op allerlei plaatsen het 3-lagen model tegen:

  .. csv-table::
    :widths: 10, 25

    "toepassingen-laag", "toepassingen: ..."
    "logische laag", "systeemsoftware: OS, programmeertalen, DBMS, TCP/IP"
    "fysieke laag", "hardware: CPU, memory, disk, netwerk, ..."

  De *logische laag* schermt de toepassingen af van de onderliggende hardware:
  je kunt daardoor eenzelfde toepassing combineren met allerlei verschillende hardware.
  De logische laag schermt ook de hardware af van de toepassingen:
  je kunt dezelfde hardware gebruiken voor allerlei verschillende toepassingen.
  Door de logische laag is de evolutie van de toepassingen onafhankelijk van de evolutie van de hardware.
  Je kunt bestaande toepassingen gebruiken op (bijna) elke nieuwe computer.
  En je hoeft niet voor elke nieuwe toepassing een nieuwe computer te kopen.
  Zowel de evolutie van de hardware als die van de software kunnen daardoor veel sneller verlopen.

  In de begintijd van de computer waren de hardware en de toepassingssoftware veel directer gekoppeld.
  De ontkoppeling door een universele logische laag is een cruciale stap in de ontwikkeling van de computer.


.. topic:: Internet end-to-end principe

  Het IP-protocol verzorgt het datatransport in het internet.
  Dit protocol is *in het netwerk* aanwezig: in de verbonden computers en in de routers e.d.
  De hogere protocollen (TCP, UDP; HTTP; enz.) zijn alleen in de eindpunten aanwezig.
  Het IP-netwerk is hierdoor onafhankelijk van de toepassingen - en daardoor geschikt voor (bijna) alle toepassingen.
  Dit betekent dat je voor een nieuwe toepassing het netwerk niet hoeft aan te passen.
  Iedereen kan een nieuwe toepassing voor het internet maken: hiervoor is alleen software in de eindpunten nodig,
  bijvoorbeeld als toepassingssoftware op een smartphone in combinatie met een server.

  Het IP-protocol is universeel wat de fysieke verbindingen betreft:
  dit protocol schermt de (meeste) eigenschappen van de fysieke verbindingen af voor de hogere protocols.
  Het IP-protocol is ook universeel wat de toepassingen betreft:
  het schermt de eigenschappen van de toepassingen af van de onderliggende hardware (*3-lagen model*).

.. topic: IP-adressen

  De lokale router wijst deze IP-adressen toe, via het DHCP-protocol.
  Je kunt het IP-adres van een computer in het lokale netwerk vinden in de tabellen van de lokale router,
  of via een speciaal scan-programma.
