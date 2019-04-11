# Localization of maui
## Process:

The following steps needs to be performed to localize in a given language:

1. **Analysis of content**: Make a complete list of the content in the local language which can be taught to a child with these games. Writing of additional material in the form of sentences and words for topics, stories and games in the app.
2. **Translation**: Translate the full database consisting of tables for creating  topics, stories and games. 
3. **Images and animation**: Create new images and animation in the local language. 
4. **Final build**: With all assets prepared and added to the project, build the maui application.


## Key changes:

1. To add support for other languages, add additional properties and require code changes as follows:
	1. [app.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/app.dart) and [loca.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/loca.dart) files contain methods which set the locale and a list of other supported locales. Add the supported locale here in the [app.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/app.dart) file:
        ```
         supportedLocales: [
            const Locale('en', ''),
            const Locale('sw', ''),
          ],
        ``` 
	2. The following files are from [l10n](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n) folder contains intl library files that are required for localization using flutter. Use this file [intl_en.arb](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/intl_en.arb) as a reference file to create a similar file in another locale. e.g. create intl_hi.arb file containing Hindi content after translating content in intl_en.arb file.
	3. With the translations ready, generate messages_{locale}.dart files for localization. Follow the steps and command mentioned [here](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) to generate locale specific files.
2. The [assets](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/assets) contains locale specific database files which contains tables containing locale specific data. The database can be viewed using SQLiteStudio. Create a copy of the database file and update the title/ content columns for the tables with locale specific content.
3. The following files are from [games](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games) folder which are used to implement games. Update variables and methods as per the required locale in the files listed below:
	1. [calculate_numbers.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/calculate_numbers.dart)
	2. [casino.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/casino.dart)
	3. [clue_game.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/clue_game.dart)
	4. [crossword.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/crossword.dart)  
	5. [dice_game.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/dice_game.dart)  
	6. [draw_challenge.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/draw_challenge.dart)
	7. [friendWord.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/friendWord.dart)
	8. [picture_sentence.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/picture.sentence.dart)
	9. [tables.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games/tables.dart)
4. [played_games_score.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components/played_games_score.dart) and [quiz_welcome.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components/quiz_welcome.dart) files create and apply animation and return the component. These files contain messages rendered in the app's UI.
5. The following files are from [quiz](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz) folder and contain classes which initialize variables with locale specific content.
e.g. Replace the content in the testMap variable as per the required locale 
	```
    const Map<String, dynamic> testMap = {
      'image': 'xyz.png',
      'question': 'Group the Animals according to the Wild and Pet Animals...?',
      'groupNames': ['Wild Animals', 'Pet Animals'],
      'groups': [
         ['Tiger', 'Lion', 'Fox', 'Cheetah', 'Deer', 'Bear', 'Leopard'],
         ['Dog', 'Cat', 'Cow', 'Parrot', 'Duck', 'Fish', 'Donkey']
      ],
     };
    
    ```
    Localize the content in the variable of type Map for each of the files:
	1. [grouping_quiz.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/grouping_quiz.dart)
	2. [match_the_following.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/match_the_following.dart)
	3. [multiple_choice.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/multiple_choice.dart)
	4. [sequence.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/sequence.dart)
6. The following files are from [repos](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos) folder and contain text data for chatting:
	1. [chat_bot_data.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos/chat_bot_data.dart): Add a new map called reply{Lang} and oneLiners{Lang} containing locale specific text for chatting. Update the code in the following function as below:
      ```fluter
      List<String> getPossibleReplies(String currentChat, int num) {
        final reply = reply{Lang};
        final oneLiners = oneLiners{Lang};

        ...
      }
      ```
	2. [game_data.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos/game_data.dart) 
7. The following files are from [screens](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens) folder and contain hardcoded  values for the _content_ and _text_ method parameters: 
	1. [chat_bot_screen.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/chat_bot_screen.dart)
	2. [comment_list_view.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/comment_list_view.dart)
	3. [home_page_view.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/home_page_view.dart)
8. The following files are from [test](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test) folder and contain questions and options which are specific to a locale. 
e.g. Replace the content in the TestMap variable with locale specific content: 
    ```
    const Map<String, dynamic> testMap = {
      'question': 'Select the animals from small to big',
      'image': 'assets/topic/jungle-animals-colorful-art.jpg',
      'answer': ['tiger cub', 'pig', 'deer', 'buffalo'],
      'choices': null,
      'correct': null
    };
    ```
	Localize the content in the variable of type Map for each of the files:
	1. [card_list_widget_test.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test/card_list_widget_test.dart)
	2. [matching_quiz_widget_test.dart ](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test/matching_quiz_widget_test.dart)
