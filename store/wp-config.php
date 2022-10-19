<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'test' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_HOST', 'http://localhost:8888/socure/' );
define( 'WP_HOME', 'http://localhost:8888/socure/' );
define( 'WP_SITE_URL', 'http://localhost:8888/socure/' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ix{IxJ -z[#sr?V)psBF;I?15QIE|~g{v>EoLXMlYSrbBA_IDu=b[IAK+$8qIg!k');
define('SECURE_AUTH_KEY',  'MOG/k|Kb+|0/(]o<!d#-0UU%,hmJQSpx#.;Ib.|>Kny,?qD{^T9[5Rd@|s;itGaw');
define('LOGGED_IN_KEY',    '7Tvn6kQ59#X7-:(dWgP{oNfRl5I%WWWwZ%C$RoO{F c|&<>,Y/sc]FWlnC;@FXxB');
define('NONCE_KEY',        'B|8} ,g[a#oiG{yR0_iO8+Nw_534DO8L`$/tdccgeu>+ufmDVl_P`J`Sd?P~K&!f');
define('AUTH_SALT',        'OF,,Ljc+xTSXuX*C!$~+pS*FYA!w>HC,pjG`JC928D]ad&mjOTi=^1bB +rz=MqO');
define('SECURE_AUTH_SALT', '4+w3tg=[{39KOMxjW1t4SPg=#al=^gTIMWa+/-@p^F Nl-K5ti:D=>47>Kp>c{8R');
define('LOGGED_IN_SALT',   '+Q-])  sr![O:ew*pX-$1sWO[OUf{(ApJ~;:8irjg^`bdB`>`$g,w4l|PH6-;-#&');
define('NONCE_SALT',       '`#K-i=/9yn0Dmqad$iu&>rwjXA?X22Xbh:uO%,-.uQ]p+C^T4VN1EpiF[%2X+MZ5');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
//define( 'WP_DEBUG', false );
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
define( 'WP_DEBUG_DISPLAY', false );
@ini_set( 'display_errors', 0 );
@ini_set( 'error_reporting', E_ALL & ~E_NOTICE & ~E_DEPRECATED);
/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
