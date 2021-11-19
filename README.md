# README #
## Vytvoření databáze ##
Nejdřív stáhněte MySQL na https://dev.mysql.com/downloads/connector/j/
Projděte instalátor a spustí se MySQL Workbench, tam levý panel přepnete z "Administration" na "Schemas", kliknete pravým a dáte "Create Schema." Schéma pojmenujte test (jinak všude jinde místo test budete psát jméno co teď zadáte) a vpravo dole dáte apply.

## Napojení databáze na IntelliJ ##

Nejdřív otevřete okno database v pravém horním rohu editoru.
![database window](https://i.imgur.com/Oge1FHp.png "Database window")

Klikněte na tlačítko + a zvolte MySQL.

![add database](https://i.imgur.com/HHGLevG.png "add database")

Otevře se okno, kde vyplníte jméno, heslo (<span style="color:orange">"admin", "admin"</span>) a database (<span style="color:orange">"test"</span>).
Pokud to děláte poprvé, v dolní části bude "Download drivers," což je potřeba stáhnout. Poté dejte "Test Connection" a měla by vyskočit success zpráva.
![database dialog](https://i.imgur.com/Bd3kTEK.png "database dialog")

## Libraries ##
Po clone je potřeba otevřít v IntelliJ, kliknout na každý .jar pravým a zvolit "Add as Library"





