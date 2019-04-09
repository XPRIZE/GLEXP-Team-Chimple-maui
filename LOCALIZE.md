# Localization of maui

1. The [assets](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/assets) contains locale specific images, JSON files for animation and database.
2. [app.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/app.dart) and [loca.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/loca.dart) files contain methods which set the locale along with a list of other supported locales.
3. [played_games_score.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components/played_games_score.dart) and [quiz_welcome.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components/quiz_welcome.dart) files create and apply animation and return the component. These files contain messages rendered in the app's UI.
4. The following files are from [games](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games) folder which are used to implement games and contain variables and methods which are specific to a locale:  
	1. [calculate_numbers.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/calculate_numbers.dart)
	2. [casino.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/casino.dart)
	3. [clue_game.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/clue_game.dart)
	4. [crossword.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/crossword.dart)  
	5. [dice_game.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/dice_game.dart)  
	6. [draw_challenge.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/draw_challenge.dart)
	7. [friendWord.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/friendWord.dart)
	8. [picture_sentence.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/picture.sentence.dart)
	9. [tables.dart](https://github.com/XPRIZE/GLEXPTeamChimplemaui/tree/master/lib/games/tables.dart)
5. The following files are from [l10n](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n) folder which contain hardcoded language words:
	1. [intl_en.arb](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/intl_en.arb)
	2. [intl_messages.arb](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/intl_messages.arb)
	3. [messages_messages.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/messages_messages.dart)
	4. [messages_all.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/messages_all.dart)
	5. [messages_en.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n/messages_en.dart)

6. The following files are from [quiz](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz) folder and contain classes which initialize variables with locale specific content:
	1. [grouping_quiz.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/grouping_quiz.dart)
	2. [match_the_following.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/match_the_following.dart)
	3. [multiple_choice.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/multiple_choice.dart)
	4. [sequence.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz/sequence.dart)
7. The following files are from [repos](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos) folder and contain text data for chatting:
	1. [chat_bot_data.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos/chat_bot_data.dart)
	2. [game_data.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos/game_data.dart) 
8. The following files are from [screens](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens) folder and contain hardcoded  values for the _content_ and _text_ method parameters: 
	1. [chat_bot_screen.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/chat_bot_screen.dart)
	2. [comment_list_view.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/comment_list_view.dart)
	3. [home_page_view.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens/home_page_view.dart)
9. The following files are from [test](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test) folder and contain questions and options which are specific to a locale:
	1. [card_list_widget_test.dart](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test/card_list_widget_test.dart)
	2. [matching_quiz_widget_test.dart ](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test/matching_quiz_widget_test.dart)
