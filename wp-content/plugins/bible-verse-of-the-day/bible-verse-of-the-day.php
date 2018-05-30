<?php
/*
Plugin Name: Bible Verse of the Day
Plugin URI: http://wordpress.org/plugins/bible-verse-of-the-day/
Description: The daily bible verse or a random bible verse on your website, from DailyVerses.net
Version: 2.4
Author: DailyVerses.net
Author URI: https://www.dailyverses.net
License: GPL2

  Copyright 2018  DailyVerses.net  (email : mail@dailyverses.net)

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License, version 2, as 
    published by the Free Software Foundation.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

function prefix_add_my_stylesheet() {
	wp_register_style( 'prefix-style', plugins_url('bible-verse-of-the-day.css', __FILE__) );
	wp_enqueue_style( 'prefix-style' );
}

add_action( 'wp_enqueue_scripts', 'prefix_add_my_stylesheet' );

function bible_verse_of_the_day($showlink, $language='en') 
{
	if ($language == '')
	{
		$language == 'en';
	}
	
	$languageAdd = get_language_add($language);
	$languageUrl = get_language_url($language);
	
	$bibleVerseOfTheDay_Date = get_option('bibleVerseOfTheDay_Date' . $languageAdd);
	$bibleVerseOfTheDay_bibleVerse = get_option('bibleVerseOfTheDay_Verse' . $languageAdd);
	$bibleVerseOfTheDay_lastAttempt = get_option('bibleVerseOfTheDay_LastAttempt' . $languageAdd);
				
	$bibleVerseOfTheDay_currentDate = date('Y-m-d');

	if($bibleVerseOfTheDay_Date != $bibleVerseOfTheDay_currentDate && $bibleVerseOfTheDay_lastAttempt < (date('U') - 3600))
	{
		$url = 'http://dailyverses.net/getdailyverse.ashx?language=' . $language . '&date=' . $bibleVerseOfTheDay_currentDate . '&url=' . $_SERVER['HTTP_HOST'] . '&type=daily2_4';
		$result = wp_remote_get($url);

		update_option('bibleVerseOfTheDay_LastAttempt' . $languageAdd, date('U'));
		
		if(!is_wp_error($result)) 
		{
			$bibleVerseOfTheDay_bibleVerse = str_replace(',', '&#44;', $result['body']);

			update_option('bibleVerseOfTheDay_Date' . $languageAdd, $bibleVerseOfTheDay_currentDate);
			update_option('bibleVerseOfTheDay_Verse' . $languageAdd, $bibleVerseOfTheDay_bibleVerse);
		}
	}

	if($bibleVerseOfTheDay_bibleVerse == "")
	{
		$bibleVerseOfTheDay_bibleVerse = get_default_verse($language);
	}

    if($showlink == 'true' || $showlink == '1')
	{
		$html =  $bibleVerseOfTheDay_bibleVerse . '<div class="dailyVerses linkToWebsite"><a href="https://dailyverses.net' . $languageUrl . '" target="_blank" rel="noopener">DailyVerses.net</a></div>';
	}
	else
	{
		$html = $bibleVerseOfTheDay_bibleVerse;
	}
	
	return $html;
}

function random_bible_verse($showlink, $language='en') 
{
	if ($language == '')
	{
		$language == 'en';
	}
	
	$languageAdd = get_language_add($language);
	$languageUrl = get_language_url($language);

	$position = rand(0, 400);
	$randomBibleVerse = get_option('randomBibleVerse_' . $position . $languageAdd);
	$randomBibleVerse_lastAttempt = get_option('randomBibleVerse_LastAttempt' . $languageAdd);
	
	if($randomBibleVerse == "" && $randomBibleVerse_lastAttempt < (date('U') - 3600))
	{
		$url = 'http://dailyverses.net/getrandomverse.ashx?language=' . $language . '&position=' . $position . '&url=' . $_SERVER['HTTP_HOST'] . '&type=random2_4';
		$result = wp_remote_get($url);

		if(!is_wp_error($result)) 
		{
			$randomBibleVerse = str_replace(',', '&#44;', $result['body']);

			update_option('randomBibleVerse_' . $position . $languageAdd, $randomBibleVerse);
		}
		else
		{
			update_option('randomBibleVerse_LastAttempt' . $languageAdd, date('U'));
		}
	}

	if($randomBibleVerse == "")
	{
		$randomBibleVerse = get_default_verse($language);
	}
		
	if($showlink == 'true' || $showlink == '1')
	{
		$html = $randomBibleVerse . '<div class="dailyVerses linkToWebsite"><a href="https://dailyverses.net' . $languageUrl . '" target="_blank" rel="noopener">DailyVerses.net</a></div>';
	}
	else
	{
		$html = $randomBibleVerse;
	}
	
	return $html;
}

function get_default_verse($language)
{
	if($language == "kjv")
	{
		return '<div class="dailyVerses bibleText">For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/john/3/16/kjv" target="_blank" rel="noopener">John 3:16</a></div>';
	}	
	else if($language == "esv")
	{
		return '<div class="dailyVerses bibleText">For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/john/3/16/esv" target="_blank" rel="noopener">John 3:16</a></div>';
	}
	else if($language == "nl" || $language == "nbv")
	{
		return '<div class="dailyVerses bibleText">Want God had de wereld zo lief dat hij zijn enige Zoon heeft gegeven, opdat iedereen die in hem gelooft niet verloren gaat, maar eeuwig leven heeft.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/nl/johannes/3/16" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}
	else if($language == "bgt")
	{
		return '<div class="dailyVerses bibleText">Want Gods liefde voor de mensen was zo groot, dat hij zijn enige Zoon gegeven heeft. Iedereen die in hem gelooft, zal niet sterven, maar voor altijd leven.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/nl/johannes/3/16/bgt" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}
	else if($language == "nbg")
	{
		return '<div class="dailyVerses bibleText">Want alzo lief heeft God de wereld gehad, dat Hij zijn eniggeboren Zoon gegeven heeft, opdat een ieder, die in Hem gelooft, niet verloren ga, maar eeuwig leven hebbe.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/nl/johannes/3/16/nbg" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}
	else if($language == "bb")
	{
		return '<div class="dailyVerses bibleText">Want God houdt zoveel van de mensen, dat Hij zijn enige Zoon aan hen heeft gegeven. Iedereen die in Hem gelooft, zal niet verloren gaan, maar zal het eeuwige leven hebben.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/nl/johannes/3/16/bb" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}
	else if($language == "es" || $language == "nvi")
	{
		return '<div class="dailyVerses bibleText">Porque tanto amó Dios al mundo, que dio a su Hijo unigénito, para que todo el que cree en él no se pierda, sino que tenga vida eterna.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/es/juan/3/16" target="_blank" rel="noopener">Juan 3:16</a></div>';
	}
	else if($language == "rvr60")
	{
		return '<div class="dailyVerses bibleText">Porque de tal manera amó Dios al mundo, que ha dado a su Hijo unigénito, para que todo aquel que en él cree, no se pierda, mas tenga vida eterna.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/es/juan/3/16/rvr60" target="_blank" rel="noopener">Juan 3:16</a></div>';
	}
	else if($language == "rvr95")
	{
		return '<div class="dailyVerses bibleText">De tal manera amó Dios al mundo, que ha dado a su Hijo unigénito, para que todo aquel que en él cree no se pierda, sino que tenga vida eterna.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/es/juan/3/16/rvr95" target="_blank" rel="noopener">Juan 3:16</a></div>';
	}
	else if($language == "de" || $language == "lut")
	{
		return '<div class="dailyVerses bibleText">Denn also hat Gott die Welt geliebt, dass er seinen eingeborenen Sohn gab, damit alle, die an ihn glauben, nicht verloren werden, sondern das ewige Leben haben.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/de/johannes/3/16" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}	
	else if($language == "neu")
	{
		return '<div class="dailyVerses bibleText">Denn so hat Gott der Welt seine Liebe gezeigt: Er gab seinen einzigen Sohn dafür, dass jeder, der an ihn glaubt, nicht ins Verderben geht, sondern ewiges Leben hat.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/de/johannes/3/16/neu" target="_blank" rel="noopener">Johannes 3:16</a></div>';
	}
	else if($language == "pt" || $language == "arc")
	{
		return '<div class="dailyVerses bibleText">Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/pt/joao/3/16" target="_blank" rel="noopener">João 3:16</a></div>';
	}

	//niv
	return '<div class="dailyVerses bibleText">For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.</div><div class="dailyVerses bibleVerse"><a href="https://dailyverses.net/john/3/16" target="_blank" rel="noopener">John 3:16</a></div>';
}

function get_language_add($language)
{
	$languageAdd = '';
	
	if($language == 'nl' || $language == 'nbv' || $language == 'bgt' || $language == 'nbg' || $language == 'bb')
	{
		if($language == 'nl') $languageAdd = '_nl';
		else if($language == 'nbv') $languageAdd = '_nbv';
		else if($language == 'bgt') $languageAdd = '_bgt';
		else if($language == 'nbg') $languageAdd = '_nbg';
		else if($language == 'bb') $languageAdd = '_bb';
	}
	else if($language == 'es' || $language == 'nvi' || $language == 'rvr60' || $language == 'rvr95')
	{
		if($language == 'es') $languageAdd = '_es';
		else if($language == 'nvi') $languageAdd = '_nvi';
		else if($language == 'rvr60') $languageAdd = '_rvr60';
		else if($language == 'rvr95') $languageAdd = '_rvr95';
	}
	else if($language == 'de' || $language == 'lut' || $language == 'neu')
	{
		if($language == 'de') $languageAdd = '_de';
		else if($language == 'lut') $languageAdd = '_lut';
		else if($language == 'neu') $languageAdd = '_neu';
	}
	else if($language == 'pt' || $language == 'arc')
	{
		if($language == 'pt') $languageAdd = '_pt';
		else if($language == 'arc') $languageAdd = '_arc';
	}
	else
	{
		if($language == 'niv') $languageAdd = '_niv';
		else if($language == 'kjv') $languageAdd = '_kjv';
		else if($language == 'esv') $languageAdd = '_esv';
	}
	
	return $languageAdd;
}

function get_language_url($language)
{
	if($language == 'nl' || $language == 'nbv' || $language == 'bgt' || $language == 'nbg' || $language == 'bb')
	{
		return '/nl';
	}
	else if($language == 'es' || $language == 'nvi' || $language == 'rvr60' || $language == 'rvr95')
	{
		return '/es';
	}
	else if($language == 'de' || $language == 'lut' || $language == 'neu')
	{
		return '/de';
	}
	else if($language == 'pt' || $language == 'arc')
	{
		return '/pt';
	}
	
	return '';
}

//en
add_shortcode('bibleverseoftheday', 'bible_verse_of_the_day_niv'); 
add_shortcode('randombibleverse', 'random_bible_verse_niv'); 
add_shortcode('bibleverseoftheday_en', 'bible_verse_of_the_day_niv'); 
add_shortcode('randombibleverse_en', 'random_bible_verse_niv'); 
add_shortcode('bibleverseoftheday_niv', 'bible_verse_of_the_day_niv'); 
add_shortcode('randombibleverse_niv', 'random_bible_verse_niv'); 
add_shortcode('bibleverseoftheday_kjv', 'bible_verse_of_the_day_kjv'); 
add_shortcode('randombibleverse_kjv', 'random_bible_verse_kjv'); 
add_shortcode('bibleverseoftheday_esv', 'bible_verse_of_the_day_esv'); 
add_shortcode('randombibleverse_esv', 'random_bible_verse_esv'); 

//nl
add_shortcode('bibleverseoftheday_nl', 'bible_verse_of_the_day_nl'); 
add_shortcode('randombibleverse_nl', 'random_bible_verse_nl'); 
add_shortcode('bibleverseoftheday_nbv', 'bible_verse_of_the_day_nl'); 
add_shortcode('randombibleverse_nbv', 'random_bible_verse_nl'); 
add_shortcode('bibleverseoftheday_bgt', 'bible_verse_of_the_day_bgt'); 
add_shortcode('randombibleverse_bgt', 'random_bible_verse_bgt'); 
add_shortcode('bibleverseoftheday_nbg', 'bible_verse_of_the_day_nbg'); 
add_shortcode('randombibleverse_nbg', 'random_bible_verse_nbg'); 
add_shortcode('bibleverseoftheday_bb', 'bible_verse_of_the_day_bb'); 
add_shortcode('randombibleverse_bb', 'random_bible_verse_bb'); 

//es
add_shortcode('bibleverseoftheday_es', 'bible_verse_of_the_day_es'); 
add_shortcode('randombibleverse_es', 'random_bible_verse_es'); 
add_shortcode('bibleverseoftheday_nvi', 'bible_verse_of_the_day_es'); 
add_shortcode('randombibleverse_nvi', 'random_bible_verse_es'); 
add_shortcode('bibleverseoftheday_rvr60', 'bible_verse_of_the_day_rvr60'); 
add_shortcode('randombibleverse_rvr60', 'random_bible_verse_rvr60'); 
add_shortcode('bibleverseoftheday_rvr95', 'bible_verse_of_the_day_rvr95'); 
add_shortcode('randombibleverse_rvr95', 'random_bible_verse_rvr95'); 

//de
add_shortcode('bibleverseoftheday_de', 'bible_verse_of_the_day_lut'); 
add_shortcode('randombibleverse_de', 'random_bible_verse_lut'); 
add_shortcode('bibleverseoftheday_lut', 'bible_verse_of_the_day_lut'); 
add_shortcode('randombibleverse_lut', 'random_bible_verse_lut'); 
add_shortcode('bibleverseoftheday_neu', 'bible_verse_of_the_day_neu'); 
add_shortcode('randombibleverse_neu', 'random_bible_verse_neu'); 

//pt
add_shortcode('bibleverseoftheday_pt', 'bible_verse_of_the_day_pt'); 
add_shortcode('randombibleverse_pt', 'random_bible_verse_pt'); 
add_shortcode('bibleverseoftheday_arc', 'bible_verse_of_the_day_arc'); 
add_shortcode('randombibleverse_arc', 'random_bible_verse_arc'); 

//en
function bible_verse_of_the_day_niv() { return bible_verse_of_the_day('0', 'niv'); }
function random_bible_verse_niv() { return random_bible_verse('0', 'niv'); }
function bible_verse_of_the_day_kjv() { return bible_verse_of_the_day('0', 'kjv'); }
function random_bible_verse_kjv() { return random_bible_verse('0', 'kjv'); }
function bible_verse_of_the_day_esv() { return bible_verse_of_the_day('0', 'esv'); }
function random_bible_verse_esv() { return random_bible_verse('0', 'esv'); }

//nl
function bible_verse_of_the_day_nl() { return bible_verse_of_the_day('0', 'nbv'); }
function random_bible_verse_nl() { return random_bible_verse('0', 'nbv'); }
function bible_verse_of_the_day_nbv() { return bible_verse_of_the_day('0', 'nbv'); }
function random_bible_verse_nbv() { return random_bible_verse('0', 'nbv'); }
function bible_verse_of_the_day_bgt() { return bible_verse_of_the_day('0', 'bgt'); }
function random_bible_verse_bgt() { return random_bible_verse('0', 'bgt'); }
function bible_verse_of_the_day_nbg() { return bible_verse_of_the_day('0', 'nbg'); }
function random_bible_verse_nbg() { return random_bible_verse('0', 'nbg'); }
function bible_verse_of_the_day_bb() { return bible_verse_of_the_day('0', 'bb'); }
function random_bible_verse_bb() { return random_bible_verse('0', 'bb'); }

//es
function bible_verse_of_the_day_es() { return bible_verse_of_the_day('0', 'nvi'); }
function random_bible_verse_es() { return random_bible_verse('0', 'nvi'); }
function bible_verse_of_the_day_nvi() { return bible_verse_of_the_day('0', 'nvi'); }
function random_bible_verse_nvi() { return random_bible_verse('0', 'nvi'); }
function bible_verse_of_the_day_rvr60() { return bible_verse_of_the_day('0', 'rvr60'); }
function random_bible_verse_rvr60() { return random_bible_verse('0', 'rvr60'); }
function bible_verse_of_the_day_rvr95() { return bible_verse_of_the_day('0', 'rvr95'); }
function random_bible_verse_rvr95() { return random_bible_verse('0', 'rvr95'); }

//de
function bible_verse_of_the_day_de() { return bible_verse_of_the_day('0', 'lut'); }
function random_bible_verse_de() { return random_bible_verse('0', 'lut'); }
function bible_verse_of_the_day_lut() { return bible_verse_of_the_day('0', 'lut'); }
function random_bible_verse_lut() { return random_bible_verse('0', 'lut'); }
function bible_verse_of_the_day_neu() { return bible_verse_of_the_day('0', 'neu'); }
function random_bible_verse_neu() { return random_bible_verse('0', 'neu'); }

//pt
function bible_verse_of_the_day_pt() { return bible_verse_of_the_day('0', 'arc'); }
function random_bible_verse_pt() { return random_bible_verse('0', 'arc'); }
function bible_verse_of_the_day_arc() { return bible_verse_of_the_day('0', 'arc'); }
function random_bible_verse_arc() { return random_bible_verse('0', 'arc'); }

class DailyVersesWidget extends WP_Widget
{
  function __construct() 
  {
	parent::__construct('DailyVersesWidget', __('Bible verse of the day', 'DailyVerses' ), array ('description' => __( 'Show the daily Bible verse from DailyVerses.net on your website!', 'DailyVerses')));
  }
 
  function form($instance)
  {
    $instance = wp_parse_args( (array) $instance, array( 'title' => 'Bible verse of the day', 'showlink' => '1', 'language' => 'en' ) );
    $title = $instance['title'];
	$showlink = $instance['showlink'];
	$language = $instance['language'];
	
?>
  <p><label for="<?php echo $this->get_field_id('title'); ?>">Title: <br /><input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo esc_attr($title); ?>" /></label></p>
  <p><select id="<?php echo $this->get_field_id('language'); ?>" name="<?php echo $this->get_field_name('language'); ?>">
	<option value="nl" <?php _e($language == 'nl' || $language == 'nbv' ? 'selected' : ''); ?>>Dutch (nederlands) - NBV</option>
	<option value="bgt" <?php _e($language == 'bgt' ? 'selected' : ''); ?>>Dutch (nederlands) - BGT</option>
	<option value="nbg" <?php _e($language == 'nbg' ? 'selected' : ''); ?>>Dutch (nederlands) - NBG</option>
	<option value="bb" <?php _e($language == 'bb' ? 'selected' : ''); ?>>Dutch (nederlands) - BB</option>
	<option value="en" <?php _e($language == '' || $language == 'en' || $language == 'niv' ? 'selected' : ''); ?>>English - NIV</option>
	<option value="kjv" <?php _e($language == 'kjv' ? 'selected' : ''); ?>>English - KJV</option>
	<option value="esv" <?php _e($language == 'esv' ? 'selected' : ''); ?>>English - ESV</option>
	<option value="de" <?php _e($language == 'de' || $language == 'lut' ? 'selected' : ''); ?>>German (deutsch) - LUT</option>
	<option value="neu" <?php _e($language == 'neu' ? 'selected' : ''); ?>>German (deutsch) - NeÜ</option>
	<option value="pt" <?php _e($language == 'pt' || $language == 'arc' ? 'selected' : ''); ?>>Portuguese (português) - ARC</option>
	<option value="es" <?php _e($language == 'es' || $language == 'nvi' ? 'selected' : ''); ?>>Spanish (español) - NVI</option>
	<option value="rvr60" <?php _e($language == 'rvr60' ? 'selected' : ''); ?>>Spanish (español) - RVR60</option>
	<option value="rvr95" <?php _e($language == 'rvr95' ? 'selected' : ''); ?>>Spanish (español) - RVR95</option>
  </select></p>
  <p><input id="<?php echo $this->get_field_id('showlink'); ?>" name="<?php echo $this->get_field_name('showlink'); ?>" type="checkbox" value="1" <?php checked( '1', $showlink ); ?>/><label for="<?php echo $this->get_field_id('showlink'); ?>"><?php _e('&nbsp;Show link to DailyVerses.net (thank you!)'); ?></label></p>
<?php
  }
 
  function update($new_instance, $old_instance)
  {
    $instance = $old_instance;
    $instance['title'] = $new_instance['title'];
	if(isset($new_instance['showlink']) && $new_instance['showlink'] == '1')
	{
		$instance['showlink'] = '1';
	}
	else
	{
		$instance['showlink'] = '0';
	}	
	if(!isset($new_instance['language']) || $new_instance['language'] == '')
	{
		$instance['language'] = 'en';
	}
	else
	{
		$instance['language'] = $new_instance['language'];
	}
    return $instance;
  }
 
  function widget($args, $instance)
  {
    extract($args, EXTR_SKIP);
 
    echo $before_widget;
    $title = empty($instance['title']) ? ' ' : apply_filters('widget_title', $instance['title']);
 
    if (!empty($title))
      echo $before_title . $title . $after_title;;
 
 	$showlink = $instance['showlink'];
	if($showlink == '')
	{
		$showlink = '1';
	}
	
	$language = $instance['language'];
	if($language == '')
	{
		$language = 'en';
	}
	
    echo bible_verse_of_the_day($showlink, $language);
 
    echo $after_widget;
  } 
}

class RandomBibleVerseWidget extends WP_Widget
{
  function __construct() 
  {
	parent::__construct('RandomBibleVerseWidget', __('Random Bible verse', 'RandomBibleVerse' ), array ('description' => __( 'Shows a random Bible verse from DailyVerses.net on your website!', 'RandomBibleVerse')));
  }
 
  function form($instance)
  {
    $instance = wp_parse_args( (array) $instance, array( 'title' => 'Random bible verse', 'showlink' => '1', 'language' => 'en' ) );
    $title = $instance['title'];
	$showlink = $instance['showlink'];
	$language = $instance['language'];
	
?>
  <p><label for="<?php echo $this->get_field_id('title'); ?>">Title: <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo esc_attr($title); ?>" /></label></p>
  <p><select id="<?php echo $this->get_field_id('language'); ?>" name="<?php echo $this->get_field_name('language'); ?>">
	<option value="nl" <?php _e($language == 'nl' || $language == 'nbv' ? 'selected' : ''); ?>>Dutch (nederlands) - NBV</option>
	<option value="bgt" <?php _e($language == 'bgt' ? 'selected' : ''); ?>>Dutch (nederlands) - BGT</option>
	<option value="nbg" <?php _e($language == 'nbg' ? 'selected' : ''); ?>>Dutch (nederlands) - NBG</option>
	<option value="bb" <?php _e($language == 'bb' ? 'selected' : ''); ?>>Dutch (nederlands) - BB</option>
	<option value="en" <?php _e($language == '' || $language == 'en' || $language == 'niv' ? 'selected' : ''); ?>>English - NIV</option>
	<option value="kjv" <?php _e($language == 'kjv' ? 'selected' : ''); ?>>English - KJV</option>
	<option value="esv" <?php _e($language == 'esv' ? 'selected' : ''); ?>>English - ESV</option>
	<option value="de" <?php _e($language == 'de' || $language == 'lut' ? 'selected' : ''); ?>>German (deutsch) - LUT</option>
	<option value="neu" <?php _e($language == 'neu' ? 'selected' : ''); ?>>German (deutsch) - NeÜ</option>
	<option value="pt" <?php _e($language == 'pt' || $language == 'arc' ? 'selected' : ''); ?>>Portuguese (português) - ARC</option>
	<option value="es" <?php _e($language == 'es' || $language == 'nvi' ? 'selected' : ''); ?>>Spanish (español) - NVI</option>
	<option value="rvr60" <?php _e($language == 'rvr60' ? 'selected' : ''); ?>>Spanish (español) - RVR60</option>
	<option value="rvr95" <?php _e($language == 'rvr95' ? 'selected' : ''); ?>>Spanish (español) - RVR95</option>
  </select></p>
  <p><input id="<?php echo $this->get_field_id('showlink'); ?>" name="<?php echo $this->get_field_name('showlink'); ?>" type="checkbox" value="1" <?php checked( '1', $showlink ); ?>/><label for="<?php echo $this->get_field_id('showlink'); ?>"><?php _e('&nbsp;Show link to DailyVerses.net (thank you!)'); ?></label></p>
<?php
  }
 
  function update($new_instance, $old_instance)
  {
    $instance = $old_instance;
    $instance['title'] = $new_instance['title'];
	if(isset($new_instance['showlink']) && $new_instance['showlink'] == '1')
	{
		$instance['showlink'] = '1';
	}
	else
	{
		$instance['showlink'] = '0';
	}
	if(!isset($new_instance['language']) || $new_instance['language'] == '')
	{
		$instance['language'] = 'en';
	}
	else
	{
		$instance['language'] = $new_instance['language'];
	}
    return $instance;
  }
 
  function widget($args, $instance)
  {
    extract($args, EXTR_SKIP);
 
    echo $before_widget;
    $title = empty($instance['title']) ? ' ' : apply_filters('widget_title', $instance['title']);
 
    if (!empty($title))
      echo $before_title . $title . $after_title;;
 
 	$showlink = $instance['showlink'];
	if($showlink == '')
	{
		$showlink = '1';
	}
	
	$language = $instance['language'];
	if($language == '')
	{
		$language = 'en';
	}
	
    echo random_bible_verse($showlink, $language);
 
    echo $after_widget;
  }
}

add_action( 'widgets_init', create_function('', 'return register_widget("DailyVersesWidget");') );
add_action( 'widgets_init', create_function('', 'return register_widget("RandomBibleVerseWidget");') );
?>