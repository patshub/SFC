<?php
add_theme_support( 'post-thumbnails' );

// Change "POST" Admin Label to "PRAYERS"
function revcon_change_post_label() {
    global $menu;
    global $submenu;
    $menu[5][0] = 'Prayers';
    $submenu['edit.php'][5][0] = 'Prayers';
    $submenu['edit.php'][10][0] = 'Add Prayers';
    $submenu['edit.php'][16][0] = 'Prayers Tags';
}
function revcon_change_post_object() {
    global $wp_post_types;
    $labels = &$wp_post_types['post']->labels;
    $labels->name = 'Prayers';
    $labels->singular_name = 'Prayer';
    $labels->add_new = 'Add Prayer';
    $labels->add_new_item = 'Add Prayer';
    $labels->edit_item = 'Edit Prayer';
    $labels->new_item = 'Prayer';
    $labels->view_item = 'View Prayer';
    $labels->search_items = 'Search Prayers';
    $labels->not_found = 'No Prayers found';
    $labels->not_found_in_trash = 'No Prayers found in Trash';
    $labels->all_items = 'All Prayers';
    $labels->menu_name = 'Prayers';
    $labels->name_admin_bar = 'Prayers';
}
add_action( 'admin_menu', 'revcon_change_post_label' );
add_action( 'init', 'revcon_change_post_object' );

function articles_post_type()
{
    $labels = array(
        'name' => 'Articles',
        'singluar' => 'Article',
        'add_new' => 'Add Article',
        'all_items' => 'All Articles',
        'edit_item' => 'Edit Article',
        'add_new_item' => 'Add Article',
        'new_item' => 'New Article',
        'view_item' => 'View Article',
        'search_item' => 'Search Articles'
    );

    $args = array (
        'labels' => $labels,
        'public' => true,
				'show_in_menu' => true,
        'has_archive' => true,
        'rewrite' => ['slug' => 'articles'],
        'publicly_queryable' => true,
        'query_var' => true,
        'capability_type' => 'post',
        'supports'     => array('thumbnail', 'title', 'editor', 'excerpt', 'author'),
        'taxonomies' => array('category')
    );
    register_post_type('articles', $args);
}
add_action('init', 'articles_post_type');

function events_post_type()
{
    $labels = array(
        'name' => 'Events',
        'singluar' => 'Event',
        'add_new' => 'Add Event',
        'all_items' => 'All Events',
        'edit_item' => 'Edit Event',
        'add_new_item' => 'Add Event',
        'new_item' => 'New Event',
        'view_item' => 'View Event',
        'search_item' => 'Search Events'
    );

    $args = array (
        'labels' => $labels,
        'public' => true,
				'show_in_menu' => true,
        'has_archive' => true,
        'rewrite' => ['slug' => 'events'],
        'publicly_queryable' => true,
        'query_var' => true,
        'capability_type' => 'post',
        'supports'     => array('thumbnail', 'title', 'editor', 'excerpt', 'author'),
        'taxonomies' => array('category')
    );
    register_post_type('events', $args);
}
add_action('init', 'events_post_type');

function photos_post_type()
{
    $labels = array(
        'name' => 'Photo Albums',
        'singluar' => 'Photo Album',
        'add_new' => 'Add Photo Album',
        'all_items' => 'All Photo Albums',
        'edit_item' => 'Edit Photo Album',
        'add_new_item' => 'Add Photo Album',
        'new_item' => 'New Photo Album',
        'view_item' => 'View Photo Album',
        'search_item' => 'Search Photo Albums'
    );

    $args = array (
        'labels' => $labels,
        'public' => true,
				'show_in_menu' => true,
        'has_archive' => true,
        'rewrite' => ['slug' => 'photos'],
        'publicly_queryable' => true,
        'query_var' => true,
        'capability_type' => 'post',
        'supports'     => array('thumbnail', 'title', 'editor', 'excerpt', 'author'),
        'taxonomies' => array('category')
    );
    register_post_type('photos', $args);
}
add_action('init', 'photos_post_type');

function videos_post_type()
{
    $labels = array(
        'name' => 'Videos',
        'singluar' => 'Video',
        'add_new' => 'Add Video',
        'all_items' => 'All Videos',
        'edit_item' => 'Edit Video',
        'add_new_item' => 'Add Video',
        'new_item' => 'New Video',
        'view_item' => 'View Video',
        'search_item' => 'Search Videos'
    );

    $args = array (
        'labels' => $labels,
        'public' => true,
				'show_in_menu' => true,
        'has_archive' => true,
        'rewrite' => ['slug' => 'videos'],
        'publicly_queryable' => true,
        'query_var' => true,
        'capability_type' => 'post',
        'supports'     => array('thumbnail', 'title', 'editor', 'excerpt', 'author'),
        'taxonomies' => array('category')
    );
    register_post_type('videos', $args);
}
add_action('init', 'videos_post_type');

//Add custom menu support.
function register_my_menus() {
  register_nav_menus(
    array(
		'main-menu' => __( 'Main Navigation' ),
		'sidebar-menu' => __( 'Sidebar Navigation' ),
    'breadcrumbs-menu' => __( 'Breadcrumbs Navigation' )
    )
  );
}
add_action( 'init', 'register_my_menus' );

// Excerpt Limit
function wpdocs_custom_excerpt_length( $length ) {
    return 20;
}
add_filter( 'excerpt_length', 'wpdocs_custom_excerpt_length', 999 );

function enqueue_lightbox() {
    wp_enqueue_style(
        'lightbox',
        'https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/css/lightbox.min.css',
        [],
        '2.10.0'
    );
    wp_enqueue_script(
        'lightbox',
        'https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.min.js',
        [ 'jquery' ],
        '2.10.0',
        true
    );
}
add_action( 'post_gallery_enqueue', 'enqueue_lightbox' );
