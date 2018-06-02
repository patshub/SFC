<?php

namespace PostGallery\Controllers;

use WPMVC\MVC\Controller;

/**
 * Config Controller.
 *
 * @author Alejandro Mostajo <http://about.me/amostajo>
 * @copyright 10Quality <http://www.10quality.com>
 * @package PostGallery
 * @version 2.2.0
 */
class ConfigController extends Controller
{
    /**
     * Enqueues and registers scripts.
     * @since 1.0.0
     * @since 2.0.0 WPMVC.
     * @since 2.1.2 Swipebox support.
     */
    public function enqueue()
    {
        wp_register_style(
            'lightbox',
            assets_url( 'css/lightbox.min.css', __FILE__ ),
            [],
            '2.10.0'
        );
        wp_register_script(
            'lightbox',
            assets_url( 'js/lightbox.min.js', __FILE__ ),
            [ 'jquery' ],
            '2.10.0',
            true
        );
        wp_register_style(
            'swipebox',
            'https://cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.4.4/css/swipebox.css',
            [],
            '1.4.1'
        );
        wp_register_script(
            'swipebox',
            'https://cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.4.4/js/jquery.swipebox.js',
            [ 'jquery' ],
            '1.4.1',
            true
        );
    }
    /**
     * Returns action links.
     * Filter "plugin_action_links_[basename]"
     * Wordpress hook
     * @since 2.0.0
     *
     * @param array $links Plugin action links.
     *
     * @return array
     */
    public function plugin_links( $links = [] )
    {
        return array_merge( [
            '<a href="' . admin_url( 'options-general.php?page=post-gallery-settings' ) . '">'
                . __( 'Settings' )
                . '</a>'
        ], $links );
    }
    /**
     * Loads plugin text domain.
     * @since 2.2.0
     *
     * @global object $postgallery Main class.
     */
    public function load_textdomain()
    {
        global $postgallery;
        $locale = is_admin() && function_exists( 'get_user_locale' ) ? get_user_locale() : get_locale();
        $locale = apply_filters( 'plugin_locale', $locale, 'simple-post-gallery' );
        unload_textdomain( 'simple-post-gallery' );
        load_textdomain(
            'simple-post-gallery',
            WP_LANG_DIR . '/simple-post-gallery/simple-post-gallery-' . $locale . '.mo'
        );
        load_plugin_textdomain(
            'simple-post-gallery',
            false,
            plugin_basename( $postgallery->config->get( 'paths.base' ) ) . '/../assets/languages/'
        );
    }
}