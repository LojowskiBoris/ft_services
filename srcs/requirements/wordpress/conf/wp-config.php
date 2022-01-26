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
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('MYSQL_DB') );

/** MySQL database username */
define( 'DB_USER', getenv('MYSQL_USER') );

/** MySQL database password */
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD') );

/** MySQL hostname */
define( 'DB_HOST', getenv('MYSQL_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define('AUTH_KEY',         '%^/qu<>8sp^iP;%--z2qj-%OBt#,*Cx+GM6_E{IRyD6Z;;A%xDL+~]:4U##[deT!');
define('SECURE_AUTH_KEY',  '2=PRgl8qL2 T(V*39Z-C^znF(fncx`}@>b-zD.BX{|h+_Gb3+ZfX@R+`jL>&_iP%');
define('LOGGED_IN_KEY',    'x8y;%&3NSU=m-BP }O,.NHGQ~B0Ac85-LZmIEo2^_b.6X/1Fl}Tg.=M0L5bcAJG|');
define('NONCE_KEY',        '&(|DxVL`mh!42!](W+b<]Y5l|+Z}.%.3n$smnQW0U|fhc?t}z1ySM--=rP7%Ese`');
define('AUTH_SALT',        '0~DKicr*^v%O!7ekto>M@Ddc4B:C(g!QnSU&G+zJd9`ck[w@vllLC|Zzu&S9~(~y');
define('SECURE_AUTH_SALT', 'tD4k2t]eNR-HfKne...BQkfk-f<TPF^Kz&X<i0mGv||/bV15Ouu5tb-|L{D81J5[');
define('LOGGED_IN_SALT',   'onGnzb>+XHe:`/NE4H$%3|{AB5f:_ZjSM,GE8n^hr#VBWIFWj>D.0qW^xSk/K*=8');
define('NONCE_SALT',       '/[8y|7,ivg?lbJlNzys+89Z+L57C(.zgJ5x%y@S}#8%j}-y(Y+9]<RBf.AciD3ms');

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

define('WP_SITEURL', 'https://' . $_SERVER['HTTP_HOST']);
define('WP_HOME', 'https://' . $_SERVER['HTTP_HOST']);

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
