<?php

/**
 * Add the Gateway to WooCommerce
 **/
add_filter('woocommerce_payment_gateways', function ($gateways = []) {
  $gateways[] = 'SolanaPayWooCommerceGateway';

  return $gateways;
});

add_action('wp_enqueue_scripts', function () {
  if (!isset($_GET['solpay'])) {
    return;
  }

  wp_enqueue_script(
      'solana-pay-wc-main-js',
      SP_WC_URI . '/assets/dist/js/solana-payment-gateway.js',
      [],
      SolanaPayWooCommerceGatewayPlugin::getAssetsVersion(),
      true
  );

  wp_localize_script('solana-pay-wc-main-js', 'SOLANA_PAY_WC_NONCE_CONFIG', [
      'nonce' => wp_create_nonce('check_solana_payment_nonce')
  ]);
});

function override_checkout_email_field($fields)
{
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

  $fields['shipping']['shipping_email']['default'] = 'satoshi@bitcoin.org';
  $fields['shipping']['shipping_first_name']['default'] = 'Satoshi';
  $fields['shipping']['shipping_last_name']['default'] = 'Nakamoto';
  $fields['shipping']['shipping_company']['default'] = 'Bitcoin Palace';
  $fields['shipping']['shipping_address_1']['default'] = '4316 Evergreen Lane';
  $fields['shipping']['shipping_address_2']['default'] = '';
  $fields['shipping']['shipping_city']['default'] = 'Irvine';
  $fields['shipping']['shipping_state']['default'] = 'CA';
  $fields['shipping']['shipping_postcode']['default'] = '92614';
  $fields['shipping']['shipping_phone']['default'] = '949-748-9989';

  return $fields;
}

add_filter('woocommerce_checkout_fields', 'override_checkout_email_field');


add_filter('woocommerce_order_button_html', 'remove_place_order_button_for_specific_payments');
function remove_place_order_button_for_specific_payments($button)
{
  return $button;
  // HERE define your targeted payment(s) method(s) in the array
  $targeted_payments_methods = array('solana_pay_gateway');
  $chosen_payment_method = WC()->session->get('chosen_payment_method'); // The chosen payment

  // For matched payment(s) method(s), we remove place order button (on checkout page)
  if (in_array($chosen_payment_method, $targeted_payments_methods) && !is_wc_endpoint_url()) {
    $button = '';
  }
  return $button;
}


// function that runs when shortcode is called
function identity_solana_pay()
{
  $order_id = $_GET['order_id'];
  if (!$order_id) return;

  $payment_config = (new SolanaPayWooCommerceGateway())->get_solana_payment_config($order_id);

  $order = wc_get_order($order_id);
  require('templates/identity-solana-pay.php');

  $out = ob_get_contents();
  ob_end_clean();

  return $out;
}


// register shortcode
add_shortcode('identity-solana-pay', 'identity_solana_pay');