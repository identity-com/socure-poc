<?php
/**
 * Plugin Name: solpay.store
 * Plugin URI: https://solpay.store
 * Description: Solana Pay for your online WooCommerce store. Help customers pay instantly with a QR code or their Web 3.0 wallet, no fees.
 * Version: 1.3.1
 * Author: Soma Social
 * Author URI: https://somasocial.com
 * License: GPLv3
 * License URI: https://www.gnu.org/licenses/gpl-3.0.html
 * Text Domain: solana-pay-woocommerce-gateway
 * Domain Path: /languages/
*/

//#! Exit if this file is accessed directly
if ( !defined( 'ABSPATH' ) ) {
    exit;
}

/*
 * Skip while WP is updating
 */
if ( defined( 'WP_INSTALLING' ) && WP_INSTALLING ) {
    return;
}

/**
 * Holds the system path to the plugin's directory. Without trailing slash
 * @var string
 */
define('SP_WC_DIR', wp_normalize_path(untrailingslashit(plugin_dir_path(__FILE__ ) ) ) );
/**
 * Holds the HTTP path to the plugin's directory. Without trailing slash
 * @var string
 */
define('SP_WC_URI', untrailingslashit(plugin_dir_url(__FILE__ ) ) );

const SP_WC_MIN_PHP_VERSION = '7.4';
const SP_WC_MIN_WP_VERSION = '5.7';

require_once( SP_WC_DIR . '/functions.php' );

//#! Setup autoloader
try {
    spl_autoload_register( function ( $className ) {
        if ( class_exists( $className ) ) {
            return;
        }
        $filePath = SP_WC_DIR . "/src/{$className}.php";
        if ( is_file( $filePath ) ) {
            require_once( $filePath );
        }
    } );
}
catch ( Exception $e ) {
    error_log( '[SWP plugin] ' . $e->getMessage() );
}

/**
 * Load plugin's textdomain.
 */
add_action( 'plugins_loaded', function () {
    load_plugin_textdomain( 'solana-pay-woocommerce-gateway' );
} );

if ( solana_pay_wc_is_env_ok() ) {
    require_once( SP_WC_DIR . '/vendors/tgmpa/class-tgm-plugin-activation.php' );
    require_once( SP_WC_DIR . '/hooks-wp.php' );
    require_once( SP_WC_DIR . '/hooks-wc.php' );
}

//#! Check if environment is supported. If not, deactivate the plugin
add_action( 'admin_init', 'solana_pay_wc_env_check' );

register_activation_hook( __FILE__, 'solana_pay_wc_env_check' );
