## List of files that require changes in order to localize the Maui application  
<b>GLEXP-Team-Chimple-maui</b>  
|---<b>[assets](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/assets):</b> Contains images, .json files for animations and locale specific database files  
|------database.db  
|---<b>[lib](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib):</b> Contains methods that sets the locale and also contains list of supported locales  
|------app.dart  
|------loca.dart  
|------<b>[components](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components):</b> Contains classes that creates, apply animation to each component and returns the component  
|---------Played_games_score.dart  
|---------quiz_welcome.dart  
|------<b>[games](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games):</b> Contains classes for each game  
|---------calculate_numbers.dart  
|---------casino.dart  
|---------clue_game.dart  
|---------crossword.dart  
|---------dice_game.dart  
|---------draw_challenge.dart  
|---------friendWord.dart  
|---------picture_sentence.dart  
|---------tables.dart  
|------<b>[l10n](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n):</b> Contains intl library files that are required for localization using flutter  
|---------intl_en.arb  
|---------intl_messages.arb  
|---------messages_messages.dart  
|---------messages_all.dart  
|---------messages_en.dart  
|------<b>[quiz](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz):</b> Contains classes which initializes variables that have hardcoded content  
|---------grouping_quiz.dart  
|---------match_the_following.dart  
|---------multiple_choice.dart  
|---------sequence.dart  
|------<b>[repos](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos):</b> Contains messages that are used by Chat Bot to chat with user  
|---------chat_bot_data.dart  
|---------game_data.dart  
|------<b>[screens](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens):</b> Contains classes that renders screen and assign hardcoded values to content or text property  
|---------chat_bot_screen.dart  
|---------comment_list_view.dart  
|---------game_category_list_screen.dart  
|---------home_page_view.dart  
|---<b>[test](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test):</b> Contains Main function that uses hardcoded variables while instantiating other classes  
|------card_list_widget_test.dart  
|------matching_quiz_widget_test.dart