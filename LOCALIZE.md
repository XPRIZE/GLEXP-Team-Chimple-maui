<pre>
<b><i>GLEXP-Team-Chimple-maui</i></b>
|---[assets](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/assets): Contains images, .json files for animations and locale specific database files
|------database.db
|---[lib](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib): Contains methods that sets the locale and also contains list of supported locales
|------app.dart
|------loca.dart
|------[components](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components): Contains classes that creates, apply animation to each component and returns the component
|---------Played_games_score.dart
|---------quiz_welcome.dart
|------[games](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games): Contains classes for each game
|---------calculate_numbers.dart
|---------casino.dart
|---------clue_game.dart
|---------crossword.dart
|---------dice_game.dart
|---------draw_challenge.dart
|---------friendWord.dart
|---------picture_sentence.dart
|---------tables.dart
|------[l10n](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n): Contains intl library files that are required for localization using flutter
|---------intl_en.arb
|---------intl_messages.arb
|---------messages_messages.dart
|---------messages_all.dart
|---------messages_en.dart
|------[quiz](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz): Contains classes which initializes variables that have hardcoded content
|---------grouping_quiz.dart
|---------match_the_following.dart
|---------multiple_choice.dart
|---------sequence.dart
|------[repos](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos): Contains messages that are used by Chat Bot to chat with user
|---------chat_bot_data.dart
|---------game_data.dart
|------[screens](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens): Contains classes that renders screen and assign hardcoded values to content or text property 
|---------chat_bot_screen.dart
|---------comment_list_view.dart
|---------game_category_list_screen.dart
|---------home_page_view.dart
|---[test](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test): Contains Main function that uses hardcoded variables while instantiating other classes 
|------card_list_widget_test.dart
|------matching_quiz_widget_test.dart