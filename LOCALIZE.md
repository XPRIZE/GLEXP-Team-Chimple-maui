To localize to a new language, ideally content should be created that is relevant to the children using the app. But, at a bare minimum, the existing content can be translated.

## Creating the lesson plans / curriculum

- Create a word list like A -> Apple or Animals -> Lion. Example can be found in [here](https://github.com/XPRIZE/GLEXP-Team-Chimple-goa/blob/master/scripts/eng/words.txt)
- Create the database file from this. Custom script can be written using the example in [create_database_for_maui.py](https://github.com/XPRIZE/GLEXP-Team-Chimple-goa/blob/master/scripts/eng/create_database_for_maui.py). 
  Run the script:

  `python3 create_database_for_maui.py words.txt`

  This will create multiple csv files in db sub-folder.

- Open the following xlsx files in scripts:
  - Chakula.xlsx
  - Kazi.xlsx
  - Magari.xlsx
  - Wanyama.xlsx
  - open.xlsx
  - story.xlsx

  In each sheet, change all columns which have a title of Swahili or sw into the new language

- Run the script to convert xlsx files to sql files
  ```
  cd scripts
  python3 xlsx_to_sql.py Chakula.xlsx
  python3 xlsx_to_sql.py Kazi.xlsx
  python3 xlsx_to_sql.py Magari.xlsx
  python3 xlsx_to_sql.py Wanyama.xlsx
  python3 xlsx_to_sql.py open.xlsx
  python3 xlsx_to_sql.py story.xlsx
  ```

- Install DB Browser for SQLite from https://sqlitebrowser.org

- Open DB Browser for SQLite
	- Open assets/database.db
	- Delete all the data from the database
	- Import each of the csv files in db sub-folder into the proper table
    - words.txt_concept.csv into concept table
    - words.txt_unit.csv into unit table
    - words.txt_lesson.csv into lesson table
    - words.txt_lesson_unit.csv into lessonUnit table
	- Go to Execute SQL Tab and copy sql from the following files and Execute/Run:

    - Chakula.sql
    - Kazi.sql
    - Magari.sql
    - Wanyama.sql
    - open.sql
    - story.sql
    - common.sql

  - Save the database and close it

## Internationalizing the app[^1]

- Open lib/app.dart and add the language code of the new language in line 43:
```
      supportedLocales: [
        const Locale('en', ''),
        const Locale('sw', ''),
      ],
```
- Copy lib/l10n/intl_messages.arb to intl_xx.arb. Translate this to the new language. You can upload this file to [Google Translator Toolkit](http://translate.google.com/toolkit) and generate the resulting translated file

- Run this command to incorporate the translated file in the app:
```
flutter packages pub run intl_translation:generate_from_arb \
    --output-dir=lib/l10n --no-use-deferred-loading \
    lib/main.dart lib/l10n/intl_*.arb
```

[^1]:More details on this process is available at [Internationalizing Flutter apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

