<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'sfc');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Y-83K~rR#.<kT_WAY_1)zW >3vmu|{J=ClwA3K <?/t@AqXPYS+j:O1^{xm]~k*>');
define('SECURE_AUTH_KEY',  '@**$= i%O+*2[koK5hx^=:BP5Uuad7[7$LB8ZQT[<Z+ZpgAC5m~?J<1EA?t7J`9o');
define('LOGGED_IN_KEY',    'IC^|VoYP%9w{be!uWZfJ@c2SCusv|,_/geBt)SlzB,gZLbaInvpm tTN9FN@u+Wt');
define('NONCE_KEY',        'Kh)xc6m/7~cO.umtrVC022oi.5g<@:. /$).G;|M{|DVf#?$?(&}Lik&VU90a]:j');
define('AUTH_SALT',        '51p^-d=ze+`4,bR%>7X6}>={vcs!UFr?2%+y,2W2b xL<5)>6=)vH/UxjD9M<L5T');
define('SECURE_AUTH_SALT', 'P7Sc)PV`v_NC `I}`*<=^Hr!G>Yp1NqP:j9LOz5S(sh7&|0zd<lLoj[G|0[>ZBh:');
define('LOGGED_IN_SALT',   '28VQBv06_nH;>Z>x&{q,?6A1EWL.Yk~E/^a|F}-#_YQLQ!xk)j-ICDCNLmR7PXo1');
define('NONCE_SALT',       'cp(Q@8[*Q29E8!7(eP[8~`rf&]Odyj<~U~h,&?4r}wZ@nS3,f_.K@F7N?v]t=~[m');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
