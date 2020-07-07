Adressering (**)
----------------

Elk protocollen in de stack heeft een eigen vorm van adressering.
In het gebruik van de IoT-knoop-webserver kun je deze allemaal tegenkomen.

.. csv-table:: Adressering in de protocolstack
  :header: "Protocol", "Adres", "Voorbeeld"
  :widths: 20, 20, 20

  "HTTP", "URL-pad",   "``/leds/0``"
  "TCP",  "TCP-poort", "``80`` (voor HTTP)"
  "IP",   "IP-adres",  "``94.132.250.160``"
  "WiFi Ethernet", "MAC-adres", "``5CCF7F6EAE3B``"

Het MAC-adres is gekoppeld aan de hardware: dit identificeert de IoT-knoop.
Als domeinnaam van de IoT-knoop-webserver gebruiken we ``esp8266-xxxx``,
waarbij ``xxxx`` de laatste 4 tekens van het MAC-adres zijn.
