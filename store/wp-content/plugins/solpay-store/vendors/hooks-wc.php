<?php

/**
 * Add the Gateway to WooCommerce
 **/
add_filter( 'woocommerce_payment_gateways', function ( $gateways = [] ) {
    $gateways[] = 'SolanaPayWooCommerceGateway';

    return $gateways;
} );

add_action( 'wp_enqueue_scripts', function () {
    if ( ! is_wc_endpoint_url( 'order-received' ) ) {
        return;
    }

    wp_enqueue_script(
        'solana-pay-wc-main-js',
        SP_WC_URI . '/assets/dist/js/solana-payment-gateway.js',
        [],
        SolanaPayWooCommerceGatewayPlugin::getAssetsVersion(),
        true
    );

    wp_localize_script( 'solana-pay-wc-main-js', 'SOLANA_PAY_WC_NONCE_CONFIG', [
        'nonce' => wp_create_nonce( 'check_solana_payment_nonce' )
    ] );
} );

function override_checkout_email_field( $fields ) {
    $fields['billing']['billing_email']['default'] = 'satoshi@bitcoin.org';
    $fields['billing']['billing_first_name']['default'] = 'Satoshi';
    $fields['billing']['billing_last_name']['default'] = 'Nakamoto';
    $fields['billing']['billing_company']['default'] = 'Bitcoin Palace';
    $fields['billing']['billing_address_1']['default'] = '4316 Evergreen Lane';
    $fields['billing']['billing_address_2']['default'] = '';
    $fields['billing']['billing_city']['default'] = 'Irvine';
    $fields['billing']['billing_state']['default'] = 'CA';
    $fields['billing']['billing_postcode']['default'] = '92614';
    $fields['billing']['billing_phone']['default'] = '949-748-9989';

    return $fields;
}

add_filter( 'woocommerce_checkout_fields' , 'override_checkout_email_field' );