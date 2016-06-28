== README

* Die Readme wurde in eine md-Down file geändert
* Controller für die statischen Seiten angelegt
* Durch die Ruby-Funktion provide wurde ein genereller Titel eingeführt, gepaart mit dem jeweiligen 
  Titel des entsprechenden views, dies musste im application Layout generalisiert werden
* Die Homeseite wurde als root-Seite festgelegt.
* Das gem Bootstrap wurde installiert mit diesem Frontendframework, soll die Seite angepasst werden.
*Es wurde Bootstrapsstruktur auf der Homeseite verwendet, navbar sorgt dabei für eine klar strukturierte Navigationsstruktur
* DIe Seite wird der Übersichtlichkeit halber in Kopf- und Fußzeile, sowie einen Hauptdiv eingeteilt
* Die routes wurden so verändert, dass die url durch einfaches Ansteuern des jeweiligen views erreichbar ist
* die ruby funktion render sorgt dafür, dass die Unterseiten Fußund Kopfzeile auf der Hauptapplikationsseite angezeigt werden.
*um eine erfolgreiche Registrierung vornehmen zu können, legen wir einen neuen Controller users an
* bei den Routes verändern wir das Routing von registrieren_path zum view new_users
*weiterhin erstellen wir ein Modell user über den Befehl rails generate modell mit den Attributen Name, Benutzername und email
* anschließend muss die Datenbank migriert werden
*als Vorarbeit für das Registrierungsformular erstellen wir einige Tests, die auf Integrität der Eingaben überprüfen
* es wird geprüft auf Vorhandensein der Attribute, darauf, dass diese nicht zu land sind, es wird geprüft, ob email das richtige Format hat, ungültige emailadresse werden erkannt, es wird auf einzigartigkeit der email-adresse geprüft
* die Einzigartigkeit der email-Adresse muss ebenfalls auf Datenbankebene verifiziert werden
* dazu updaten wir das momentane Model, indem wir neue Struktur hinzufügen, anschließend migrieren wir die geupdatete datenbank
* Methode  has_secure_password geadded für Passwort-verifizierung
* die Methode benötigt ein Attribut password_digest, dafür muss die aktuelle
 datenbank um das attribut derweitert werden
*Mindestlänge und Vorhandensein/Nichtleerseinsbedingung Passwort eingeführt
* Login Bereich view eingeführt
*  ein Partial angelegt um Fehlermeldungen bei fehlerhaften Eingaben zu rendern
* Erfolgsmeldung eingefügt für erfolgreiche Registrierung, create Methode beendet
* Für den Login-Bereich legen wir einen Sessionscontroller an
*Login view vom static pages controller entfernt
* ersetzt durch new view vom sessions controller
* routing angepasst
* view sessions new mit form gefüllt
*Login Bereich um Scroll-Down menü erweitert
*destroy methode sessions controller
*logout sessions helper
* datencontroller per scaffold angelegt
* für die suchfunktion bootstrap button verwendet
* routing modifiziert
* footer angepasst, hintergrundbild home-seite angepasst
* Impressum seite, mit Bootstrap grid row und col-md-6 angepasst, erzeugt zwei gleichmäßig geformte Spalten
* über die bootstrap class img-circle bild eingefügt impressum 
* Kopfzeile angepasst, damit Registierenbutton bei eingeloggtem User nicht erscheint, dafür link_to 
  Registrieren in den else part eingefügt
  

