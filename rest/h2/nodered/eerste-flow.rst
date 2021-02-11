Eerste flow
-----------

Met deze eerste flow kun je zien of alles werkt:

.. figure:: nodered-flow1.png
   :width: 500 px
   :align: center

   NodeRed: eerste flow

Hiervoor gebruik je de volgende nodes:

+----------------+---------------+------------------+
| **figuur**     | **naam**      | **soort node**   |
+----------------+---------------+------------------+
| |inject-node|  | inject-node   |  input           |
+----------------+---------------+------------------+
| |debug-node|   | debug-node    |  output          |
+----------------+---------------+------------------+

.. |inject-node| image:: NodeRed-inject-node.png
.. |debug-node| image:: NodeRed-debug-node.png

.. rubric:: Opdracht A

Voer de onderstaande opdrachten uit in een lege (flow)tab in NodeRed.

* sleep een inject-node vanuit de lijst met nodes links naar het lege vlak in het midden
* plaats op dezelfde manier een debug-node;
* verbind de output (rechts) van de inject-node met de input (links) van de debug-node;
* activeer deze flow (rechts boven: **Deploy**);
* selecteer de debug-tab (rechts);
* test deze flow, door op het knopje links op de input-node ("timestamp") te klikken.

Als het goed is, krijg je in het debug-venster rechts nu de output van deze flow te zien.
Elke keer als je op de input-node klikt, genereert deze een timestamp-event.

.. rubric:: Opdracht B

Voer onderstaande opdrachten uit; controleer steeds per onderdeel de uitwerking (stappen a, b, c, d).

1. verander de configuratie van de inject-node: zorg ervoor dat deze elke 10 seconden een timestamp oplevert.

   a. double-click op een knoop geeft het configuratie-venster;
   b. bewaar de nieuwe configuratie via de "Done"-knop;
   c. "Deploy" en
   d. controleer het resultaat via de debug-tab.

2. verander de configuratie van de inject-node:
   zorg ervoor dat deze als *payload* een tekst levert.
3. verbind meerdere inject-knopen met herhalende berichten met dezelfde debug-knoop.
