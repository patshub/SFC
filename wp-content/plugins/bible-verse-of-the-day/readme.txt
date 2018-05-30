=== Bible Verse of the Day ===
Contributors: dailyverses
Donate link: http://www.dailyverses.net/
Tags: bible, verse, day, daily, verses, everyday, widget, bijbel, tekst, bijbeltekst, dagelijks, dag, random, willekeurige, bibelverse, bibel, zufalls, bibelvers, tages, versiculo, verso, biblia, azar, dia, versiculos, diario, bíblia, aleatória, nbv, nvi, niv, kjv, lut, esv, rvr95, rvr60, bgt, nbg, neu, arc, reina, valera, almeida, luther, king, james, gewone, taal
Requires at least: 2.7.0
Tested up to: 4.9.1
Stable tag: trunk
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

This plugins shows the daily inspiring Bible verse or a random Bible verse from DailyVerses.net. In English, Dutch, Spanish, Portuguese and German.

== Description ==

This plugins shows a daily Bible verse or a random Bible verse from [DailyVerses.net](http://dailyverses.net). The plugin supports ([Dutch](http://dailyverses.net/nl)), ([Spanish](http://dailyverses.net/es)), ([Portuguese](http://dailyverses.net/pt)) and ([German](http://dailyverses.net/de)) Bible verses. The verses are from the NIV, KJV, ESV, NBV, BB, BGT, NBG, NVI, RVR60, RVR95, ARC, LUT and NEU translation. 

The plugin can be used as a widget, so it's easy to install. After installing the plugin you will have two widgets: 'Bible verse of the day' and 'Random Bible verse'. You can also use tags: [bibleverseoftheday_niv] and [randombibleverse_niv], replace 'niv' with another translation if necessary, see list below.

If the connection to [DailyVerses.net](http://dailyverses.net) for some reason fails, it will show the previous verse. If there is no previous verse, the plugin will show John 3:16.

**English**

* New Internation Version (niv)
* King James Version (kjv)
* English Standard Version (esv)

**Nederlands (Dutch)**

* Nieuwe Bijbelvertaling (nbv)
* Bijbel in Gewone Taal (bgt)
* Nederlands Bijbelgenootschap (nbg)
* BasisBijbel (bb)

Widget: 'Bijbeltekst van de Dag' (Bible verse of the day) and 'Willekeurige Bijbeltekst' (Random Bible verse).

**Spanish (Español)**

* Nueva Versión Internacional (nvi)
* Reina-Valera 1960 (rvr60)
* Reina-Valera 1995 (rvr95)

Widget: 'Versículo del día' (Bible verse of the day) and 'Versículo de la Biblia al azar' (Random Bible verse).

**Portuguese (Português)**

* Almeida Revista e Corrigida (arc)

Widget: 'Versículo do dia' (Bible verse of the day) and 'Versículo da Bíblia aleatória' (Random Bible verse).

**German (Deutsch)**

* Luther 2017 (lut)
* Neue evangelistische Übersetzung (neu)

Widget: 'Bibelvers des Tages' (Bible verse of the day) and 'Zufalls Bibelvers' (Random Bible verse).

== Installation ==

This section describes how to install the plugin and get it working.

1. You can install the plugin by uploading the zip in the plugins section of wordpress, or by adding the files to the folder '/wp-content/plugins/bible-verse-of-the-day'.
2. Activate the plugin through the 'Plugins' menu in WordPress.
3. English:
   - Widget: There are widgets added 'Bible Verse of the Day' and 'Random Bible Verse'. You can drag these onto the sidebar of your site, and select a bible translation.
   - Replace tags: You can use the following shortcodes: [bibleverseoftheday_niv] and [randombibleverse_niv]. Replace 'niv' by another translation if necessary.
   - Template: Place `<?php echo bible_verse_of_the_day(0, 'niv'); ?>` or `<?php echo random_bible_verse(0, 'niv'); ?>` in your template. Replace 'niv' by another translation if necessary.
   
   Dutch (Nederlands):
   - Widget: Er zijn twee widgets toegevoegd 'Bible Verse of the Day' en 'Random Bible Verse', deze kun je op de sidebar van je website plaatsen. Selecteer de gewenste bijbelvertaling bij de configuratie van de widget.
   - Replace tags: Je kunt de volgende shortcodes gebruiken: [bibleverseoftheday_nbv] and [randombibleverse_nbv]. Vervang 'nbv' eventueel door een andere ondersteunde vertaling.
   - Template: Plaats `<?php echo bible_verse_of_the_day(0, 'nbv'); ?>` of `<?php echo random_bible_verse(0, 'nbv'); ?>` in je template. Vervang 'nbv' eventueel door een andere ondersteunde vertaling.
   
== Frequently Asked Questions ==


== Screenshots ==

1. This is what the daily Bible verse will look like by default. By changing the css you can change the appearance of the plugin.
2. Another screenshot of the plugin.
3. A wordpress site with the plugin in the sidebar.

== Changelog ==

= 2.4 =
* Added Portuguese
* Added Almeida Revista e Corrigida (ARC)

= 2.3 =
* Added BasisBijbel (BB)
* Use secure https where possible.
* Tested with Wordpress version 4.7

= 2.2 =
* Added English Standard Version (ESV)
* Added Bijbel in Gewone Taal (BGT)
* Added Nederlands Bijbelgenootschap (NBG)
* Added Reina-Valera 1960 (RVR60)
* Added Reina-Valera 1995 (RVR95)
* Added Neue evangelistische Übersetzung (NeÜ)

= 2.1 =
* Improved widget constructor for wordpress 4.3

= 2.0 =
* Added KJV (King James Version)
* Tested with Wordpress version 4.1.1

= 1.9 =
* Fixed (new attempt) error on some wordpress installations: Cannot modify header information - headers already sent by, removed BOM headers from file

= 1.8 =
* Fixed error on some wordpress installations: Cannot modify header information - headers already sent by

= 1.7 =
* Fixed deprecated function warning
* Tested with Wordpress version 4.0.1

= 1.6 =
* Added German and Spanish
* Tested with Wordpress version 3.8.1

= 1.5 =
* Fixed missing argument warning
* Tested with Wordpress version 3.7.1

= 1.4 =
* Added support for the dutch language
* Added more verses to the random bible verse functionality.

= 1.3 =
* Added the random bible verse functionality.
* Added shortcodes: [bibleverseoftheday] and [randombibleverse].
* The widgets now have a default title.
* The widgets now have a option to choose whether you want to show the link to [DailyVerses.net](http://dailyverses.net) or not.

= 1.2 =
* On some wordpress installations there were security issues when getting the verse from [DailyVerses.net](http://dailyverses.net), these are now solved by using the wordpress functions.

= 1.1 =
* The new verse will now show at midnight depending on your server time, not the time of the server of [DailyVerses.net](http://dailyverses.net)
* The plugin no longer uses javascript, so it will also work for users with javascript disabled.
* The plugin now only gets verse once a day from DailyVerses.net so there is no longer a need to get the verse on each page load. This makes the performance even better!

= 1.0 =
* Initial version

== Upgrade Notice ==

readme updated