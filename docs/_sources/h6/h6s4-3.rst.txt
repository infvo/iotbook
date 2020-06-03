Veiligheid (security)
---------------------

(fig? - encryptie/descryptie in LoRaWan/TTN-keten.)

De payload van LoRaWan-berichten wordt versleuteld met het AES-algoritmen, met een 128-bits sleutel.
De encryptie vindt in de TTN-server plaats in de application: de keten tussen device en application ziet alleen de versleutelde payload.
TTN biedt ook de mogelijkheid om de application helemaal aan de gebruiker over te laten:
in dat geval vindt er aan de TTN-kant geen decryptie plaats, en is maximale geheimhouding verzekerd. 

* versleuteling
* volgnummers (om “replay attack” te voorkomen); bovendien zinvol om daarmee niet-ontvangen berichten te identificeren.
