# README #
## Zadání ##
MediEmp - Aplikace pro správu vzdělávání zaměstnanců v medicíně.

Problém řešíme pomocí aplikace v Javě napojené na MySQL databázi. Aplikace má jednoduché konzolové rozhraní
pro orientaci v aplikaci. Zaměstnavatelé si mohou zjišťovat informace o vzdělání zaměstnanců a zaměstnanci
se mohou přihlašovat na různé kurzy.

## Schéma ##
![schema](https://i.imgur.com/gYtegRg.png "Schéma")

## Vytvoření databáze ##
Nejdříve stáhněte MySQL na https://dev.mysql.com/downloads/connector/j/

Projděte instalátor (všechno default, root password "admin") a spustí se MySQL Workbench, tam levý panel přepnete z "Administration" na "Schemas", kliknete pravým a dáte "Create Schema." Schéma pojmenujte test (jinak všude jinde místo test budete psát jméno co teď zadáte) a vpravo dole dáte apply.

## Napojení databáze na IntelliJ ##

Nejdříve otevřete okno database v pravém horním rohu editoru.
![database window](https://i.imgur.com/Oge1FHp.png "Database window")

Klikněte na tlačítko + a zvolte MySQL.

![add database](https://i.imgur.com/HHGLevG.png "add database")

Otevře se okno, kde vyplníte jméno, heslo ("admin" nebo "root", "admin") a database ("test").
Pokud to děláte poprvé, v dolní části bude "Download drivers," což je potřeba stáhnout. Poté dejte "Test Connection" a měla by vyskočit success zpráva.
![database dialog](https://i.imgur.com/Bd3kTEK.png "database dialog")

## Libraries ##
Po clone je potřeba otevřít v IntelliJ, kliknout na každý .jar ve složce lib pravým tlačítkem a zvolit "Add as Library"

## SQL Injection ##
SQL Injection řešíme pomocí prepared statements.
![prepared statement](https://i.imgur.com/mo6BU96.png "Prepared statement")

Díky oddělení sql příkazu a parametrů zabraňujeme možnosti SQL injection. SQL příkaz se předkompiluje
a tak parametry nemohou být kompilovány jako třeba vnořený select.

