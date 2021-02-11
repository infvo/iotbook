RFM69-protocol
==============

We hebben in de RFM69-knopen te maken met de volgende *protocolstack*:

* het hardware-protocol (RFM69 radio);
* het protocol van de RFM69-library;
* het protocol van de IoT-toepassing

.. figure:: IoT-rfm69-pakket.png
  :width: 600 px
  :align: center

  RFM69 pakket met LPP payload

Hardware-protocol
-----------------

Het *hardware-protocol* zorgt voor:

* het adresseren (*destination*), zenden en ontvangen van pakketten;
* het controleren van de CRC (cyclic redundancy check, checksum):
  als deze klopt, concludeert de hardware dat het pakket correct ontvangen is;
* het versleutelen en ontsleutelen van de payload (encryptie).

De zender en ontvanger gebruiken dezelfde sleutel voor de encryptie:
deze moet van je te voren aan beide kanten instellen.
In zo'n geval spreken we over een *pre-shared key*.

  Een beveiligde internet-verbinding, zoals voor https,
  maakt gebruik van *public-key encryptie*.
  In dat geval heb je geen pre-shared keys nodig.

RFM69-library protocol
----------------------

Het protocol van de *RFM69-library* voegt het adres van de afzender (*source*) toe aan het pakket,
als eerste byte van de payload in het hardware-pakket.
Het protocol van de RFM69-library noemen we hier het *RFM69-protocol*.

Het RFM69-protocol gebruikt 5-bits adressen (0..63) voor de knopen in het netwerk.
De adressen 0, 61, 62 en 63 hebben een speciale betekenis.
RFM69-adres 0 als *destination* is het *broadcast address*: alle IoT-knopen in het RFM69-netwerk ontvangen zo'n bericht.

De belangrijkste opdracht voor het zenden en ontvangen van een pakket zijn:

* `rf.receive(rxBuf, sizeof rxBuf);`
    * het eerste byte van `rxBuf` geeft het adres van de afzender.
* `rf.send(dstNode, txBuf, len);`

Toepassingsprotocol (payload)
-----------------------------

Het *toepassingsprotocol* gebruikt de rest van de hardware-payload.
Dit protocol gebruikt verschillende formaten voor uplink- en voor downlink-pakketten.
We bespreken hier alleen de binaire formaten op basis van het Cayenne *low power payload* (LPP) formaat.

.. rubric:: uplink-berichten

De payload voor uplink-berichten bevat de volgende elementen:

* *port* (1 byte): dit geeft aan welk protocol gebruikt wordt voor de payload;
  ``port=1`` geeft het LPP-formaat aan.
* *nodeid* (2 bytes): de identificatie van de knoop (gebruikt in het MQTT-topic);
* *counter* (2 bytes): het volgnummer van het bericht;
  we gebruiken dit onder meer voor de veiligheid, om een *replay attack* te voorkomen.
* *LPP-upload-payload*, zie verderop.

.. rubric:: download-berichten

De payload voor een downlink-bericht is erg eenvoudig:

* *port*: geeft het toepassingsprotocol aan; ``port=1`` staat voor de LPP payload;
* (de nodeid is niet nodig: de IoT-knoop kent zijn eigen nodeid)
* de LPP-downlink-payload
* een *counter* (volgnummer) voor de veiligheid is wel nodig.
