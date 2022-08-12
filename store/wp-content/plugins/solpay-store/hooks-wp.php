<?php
//#! Exit if this file is accessed directly
if ( !defined( 'ABSPATH' ) ) {
    exit;
}

add_action( 'tgmpa_register', 'solana_pay_wc_register_required_plugins' );
/**
 * Register the required plugins for this plugin.
 *
 * The variables passed to the `tgmpa()` function should be:
 * - an array of plugin arrays;
 * - optionally a configuration array.
 * If you are not changing anything in the configuration array, you can remove the array and remove the
 * variable from the function call: `tgmpa( $plugins );`.
 * In that case, the TGMPA default settings will be used.
 *
 * This function is hooked into `tgmpa_register`, which is fired on the WP `init` action on priority 10.
 */
function solana_pay_wc_register_required_plugins()
{
    /*
     * Array of plugin arrays. Required keys are name and slug.
     * If the source is NOT from the .org repo, then source is also required.
     */
    $plugins = [
        [
            'name' => 'WooCommerce',
            'slug' => 'woocommerce',
            'required' => true,
            'force_activation' => false,
            'force_deactivation' => false,
        ],
    ];

    /*
     * Array of configuration settings. Amend each line as needed.
     *
     * TGMPA will start providing localized text strings soon. If you already have translations of our standard
     * strings available, please help us make TGMPA even better by giving us access to these translations or by
     * sending in a pull-request with .po file(s) with the translations.
     *
     * Only uncomment the strings in the config array if you want to customize the strings.
     */
    $config = [
        // Unique ID for hashing notices for multiple instances of TGMPA.
        'id' => 'solana-pay-woocommerce-gateway',
        // Default absolute path to bundled plugins.
        'default_path' => '',
        // Menu slug.
        'menu' => 'tgmpa-install-plugins',
        // Parent menu slug.
        'parent_slug' => '',
        // Capability needed to view plugin install page, should be a capability associated with the parent menu used.
        'capability' => 'manage_options',
        // Show admin notices or not.
        'has_notices' => true,
        // If false, a user cannot dismiss the nag message.
        'dismissable' => true,
        // If 'dismissable' is false, this message will be output at top of nag.
        'dismiss_msg' => '',
        // Automatically activate plugins after installation or not.
        'is_automatic' => false,
        // Message to output right before the plugins table.
        'message' => '',
    ];

    tgmpa( $plugins, $config );
}
