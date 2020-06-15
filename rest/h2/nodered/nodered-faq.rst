
NodeRed FAQ
-----------

.. rubric:: hoe (de)activeer ik een hele flow?

Door double-click op de flow-tab krijg je het configuratievenster voor deze flow te zien.
Je kunt de flow (de)activeren via Status (Enabled of niet).
Het is soms handig om een flow te deactiveren, als deze andere flows in de weg zit.
Of als dit een test-flow is die je zo nu en dan nodig hebt.

Je kunt de flow (tab) hier ook een andere naam geven, of helemaal verwijderen.

.. rubric:: hoe maak ik de info/debug-sidebar (on)zichtbaar?

Via het hamburgermenu->View->Show sidebar.

.. rubric:: hoe maak ik de FRED sidebar (on)zichtbaar?

Deze sidebar kun je (on)zichtbaar maken via het pijltje in de hoek linksonder.

.. rubric:: hoe verwijder ik een hele flow?

Double-click op de flow tab: klik in het configuratie-venster op Delete,
links boven.
Door "Deploy" maak je de aangepaste flows actief.

.. rubric:: hoe installeer ik extra nodes?

Er zijn veel soorten nodes beschikbaar voor allerlei protocollen en toepassingen.
In de `NodeRed library <https://flows.nodered.org/>`_ vind je veel voorbeelden.

Bij een standaard NodeRed installatie kun je extra nodes meestal installeren via hamburgermenu->Manage palette.
Voor een uitgebreidere uitleg, zie https://nodered.org/docs/getting-started/adding-nodes.

In FRED kun je nodes installeren via de FRED sidebar, helemaal links.
Deze sidebar kun je (on)zichtbaar maken via het pijltje in de hoek linksonder.

Voorbeeld: installeren van nodes voor TTN (THe Things Network):

* selecteer Tools->Add or Remove Nodes
* selecteer IoT
* zet het vinkje bij Ttn (onderaan)

Na herstarten van de server verschijnen de TTN-nodes nu in het palette.

.. rubric:: waar vind ik de verborgen nodes?

NodeRed gebruikt *configuration nodes* voor bijvoorbeeld de MQTT-server-instellingen,
en voor de dashboard-instellingen.
Deze *configuration nodes* kun je zichtbaar maken via hamburgermenu->Configuration nodes.

In de gratis versie van FRED heb je een beperking van maximaal 50 nodes.
Daar tellen ook de verborgen nodes in mee.

.. rubric:: de MQTT-nodes blijven hangen in de "connecting" toestand

Mogelijk ontbreken de security-gegevens (username/password van de MQTT broker).
Double-click op de MQTT-node, en klik vervolgens op het potloodje naast de naam van de broker.
In de configuratie van de broker selecteer je de tab "security", en vult daar de username/password-combinatie van je broker in.
