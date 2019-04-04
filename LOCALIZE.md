## List of files that require changes in order to localize the Maui application
<pre>
<b><i>GLEXP-Team-Chimple-maui</i></b>
|---<b><i>[assets](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/assets): </i></b>Contains entire database in which the content or text columns for all the tables needds to be updated with the locale specific text
|----<b><i>database.db</i></b>
|---<b><i>[lib](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib): </i></b>Contains methods that sets the locale and also contains list of supported locales
|----<b><i>app</i></b>
|----<b><i>loca</i></b>
|----<b><i>[components](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/components): </i></b>Contains text that needs to be updated as per the locale
|-----<b><i>Played_games_score</i></b>
|-----<b><i>quiz_welcome</i></b>
|----<b><i>[games](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/games): </i></b>Contains variable declarations that require changes as per the locale
|-----<b><i>calculate_numbers</i></b>
|-----<b><i>casino</i></b>
|-----<b><i>clue_game</i></b>
|-----<b><i>crossword</i></b>
|-----<b><i>dice_game</i></b>
|-----<b><i>draw_challenge</i></b>
|-----<b><i>friendWord</i></b>
|-----<b><i>picture_sentence</i></b>
|-----<b><i>tables</i></b>
|----<b><i>[I10n](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/l10n): </i></b>Contains files that contain locale specific content that needs to be generated
|-----<b><i>intl_en</i></b>
|-----<b><i>intl_messages</i></b>
|-----<b><i>messages_messages</i></b>
|-----<b><i>messages_all</i></b>
|-----<b><i>messages_en</i></b>
|----<b><i>[quiz](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/quiz): </i></b>Contains variable declarations that require changes as per the locale
|-----<b><i>grouping_quiz</i></b>
|-----<b><i>match_the_following</i></b>
|-----<b><i>multiple_choice</i></b>
|-----<b><i>sequence</i></b>
|----<b><i>[repos](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/repos): </i></b>Contains variable with data that needs to be updated as per the locale 
|-----<b><i>chat_bot_data</i></b>
|-----<b><i>game_data</i></b>
|----<b><i>[screens](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/lib/screens): </i></b>Contains text that needs to be updated as per the locale 
|-----<b><i>chat_bot_screen: </i></b>
|-----<b><i>comment_list_view</i></b>
|-----<b><i>game_category_list_screen</i></b>
|-----<b><i>home_page_view</i></b>
|---<b><i>[test](https://github.com/XPRIZE/GLEXP-Team-Chimple-maui/tree/master/test): </i></b>Contains variable declarations that require changes as per the locale
|----<b><i>card_list_widget_test</i></b>
|----<b><i>matching_quiz_widget_test</i></b>
