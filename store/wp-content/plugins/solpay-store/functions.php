<?php
//#! Exit if this file is accessed directly
if ( !defined( 'ABSPATH' ) ) {
    exit;
}

/**
 * Check if environment is supported. If not, register the admin notices to show the user the problem
 * @return bool
 */
function solana_pay_wc_is_env_ok()
{
    if ( version_compare( PHP_VERSION, SP_WC_MIN_PHP_VERSION, '<' ) ) {
        add_action( 'admin_notices', 'solana_pay_wc_fail_php_version' );
        return false;
    }

    if ( version_compare( get_bloginfo( 'version' ), SP_WC_MIN_WP_VERSION, '<' ) ) {
        add_action( 'admin_notices', 'solana_pay_wc_fail_wp_version' );
        return false;
    }

    if ( !solana_pay_wc_is_wc_installed() ) {
        add_action( 'admin_notices', 'solana_pay_wc_fail_woocommerce' );
        return false;
    }

    return true;
}

/**
 * Check environment
 * @return void
 */
function solana_pay_wc_env_check()
{
    if ( solana_pay_wc_is_env_ok() ) {
        require_once( SP_WC_DIR . '/plugin.php' );
    }
    else {
        deactivate_plugins( plugin_basename( __FILE__ ) );
    }
}

/**
 * Plugin's admin notice for minimum PHP version.
 * Warning when the site doesn't have the minimum required PHP version.
 */
function solana_pay_wc_fail_php_version()
{
    /* translators: %s: PHP version. */
    $message = sprintf(esc_html__( 'Solana Pay WordPress Plugin requires PHP version %s+, plugin is currently NOT RUNNING.', 'solana-pay-woocommerce-gateway' ), SP_WC_MIN_PHP_VERSION );
    $html_message = sprintf( '<div class="error">%s</div>', wpautop( $message ) );
    echo wp_kses_post( $html_message );
}

/**
 * Plugin's admin notice for minimum WordPress version.
 * Warning when the site doesn't have the minimum required WordPress version.
 */
function solana_pay_wc_fail_wp_version()
{
    /* translators: %s: WordPress version. */
    $message = sprintf(esc_html__( 'Solana Pay WordPress Plugin requires WordPress version %s+. Because you are using an earlier version, the plugin is currently NOT RUNNING.', 'solana-pay-woocommerce-gateway' ), SP_WC_MIN_WP_VERSION );
    $html_message = sprintf( '<div class="error">%s</div>', wpautop( $message ) );
    echo wp_kses_post( $html_message );
}

/**
 * Plugin's admin notice for missing WooCommerce.
 * Warning when the site doesn't have the WooCommerce plugin installed.
 */
function solana_pay_wc_fail_woocommerce()
{
    /* translators: %s: WordPress version. */
    $message = esc_html__( 'Solana Pay WordPress Plugin requires WooCommerce plugin to be installed and activated. Because it was not found, the plugin is currently NOT RUNNING.', 'solana-pay-woocommerce-gateway' );
    $html_message = sprintf( '<div class="error">%s</div>', wpautop( $message ) );
    echo wp_kses_post( $html_message );
}

/**
 * Check to see whether the WooCommerce plugin is installed and activated
 * @return bool
 */
function solana_pay_wc_is_wc_installed()
{
    return in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins', [] ) ) );
}
