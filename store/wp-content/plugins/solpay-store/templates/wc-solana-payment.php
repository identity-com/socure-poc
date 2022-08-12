<h4>
    <?php _e( 'Pay now by scanning the QR code or by connecting your wallet.', 'solana-pay-woocommerce-gateway' ); ?>
</h4>
<div class="wc-solana-payment-root">
    <div class="wc-solana-payment-timer js-solana-timer-container">
        <?php

        $seconds    = $solanaPaymentConfig['verificationServiceTimeout'] / 1000;
        $timerValue = new DateTime( "@$seconds" );

        echo sprintf(
            __(
                'You have %s until QR code payment confirmation expires, after which you will have to refresh the page and try again.',
                'solana-pay-woocommerce-gateway'
            ),
            sprintf(
                '<span class="wc-solana-payment-timer js-solana-timeout-timer">%s</span>',
                $timerValue->format( 'i:s' )
            )
        );

        ?>
    </div>
    <div class="wc-solana-final-confirmation js-final-confirmation-message"></div>
    <img src="" class="wc-solana-qr-container js-solana-qr-container" alt=""/>
    <div class="wc-solana-wallet-container js-solana-wallet-container"></div>
    <div class="wc-solana-error-container js-solana-error-container"></div>
</div>
