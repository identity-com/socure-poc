<?php
/**
 * Thankyou page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/thankyou.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.7.0
 */

defined('ABSPATH') || exit;
?>

<div class="woocommerce-order woocommerce">
    <script>
      SOLANA_PAYMENT_CONFIG = <?php echo wp_json_encode($payment_config) ?>;
    </script>

  <?php
  if ($order) :

    do_action('woocommerce_before_thankyou', $order->get_id());
    ?>
      <ul class="woocommerce-order-overview woocommerce-thankyou-order-details order_details">

          <li class="woocommerce-order-overview__order order">
            <?php esc_html_e('Order number:', 'woocommerce'); ?>
              <strong><?php echo $order->get_order_number(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                ?></strong>
          </li>

          <li class="woocommerce-order-overview__date date">
            <?php esc_html_e('Date:', 'woocommerce'); ?>
              <strong><?php echo wc_format_datetime($order->get_date_created()); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                ?></strong>
          </li>

        <?php if (is_user_logged_in() && $order->get_user_id() === get_current_user_id() && $order->get_billing_email()) : ?>
            <li class="woocommerce-order-overview__email email">
              <?php esc_html_e('Email:', 'woocommerce'); ?>
                <strong><?php echo $order->get_billing_email(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></strong>
            </li>
        <?php endif; ?>

          <li class="woocommerce-order-overview__total total">
            <?php esc_html_e('Total:', 'woocommerce'); ?>
              <strong><?php echo $order->get_formatted_order_total(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                ?></strong>
          </li>

        <?php if ($order->get_payment_method_title()) : ?>
            <li class="woocommerce-order-overview__payment-method method">
              <?php esc_html_e('Payment method:', 'woocommerce'); ?>
                <strong><?php echo wp_kses_post($order->get_payment_method_title()); ?></strong>
            </li>
        <?php endif; ?>

      </ul>

    <?php do_action('woocommerce_thankyou', $order->get_id()); ?>

  <section class="woocommerce-order-details" style="padding-left: 1em; width: 55%">
      <h2 class="woocommerce-order-details__title">Make Payment</h2>

      <div class="wc-solana-payment-root">
          <div class="wc-solana-final-confirmation js-final-confirmation-message"></div>
          <div class="wc-solana-wallet-container js-solana-wallet-container"></div>
          <div class="wc-solana-error-container js-solana-error-container"></div>
      </div>
  </section>
  <?php endif; ?>
</div>
