# Solana Pay WooCommerce Payment Gateway

✅ Why are we building on Solana?
We’re building a quick and easy way for merchants who are using ecommerce platforms to integrate with Solana Pay. We believe Solana Pay is the killer app of Solana because of low gas fees and the rapid settling and finalization of transactions. Most people have an a-ha moment the first time they scan a QR code and pay for a real product.

✅ Why we came to the hacker house?
We came to the hacker house to make connections, seek the best way to fund our project and of course do a live demo. We’ve already made an MVP that works perfectly on mainnet and it can be integrated into WooCommerce in under 1 minute.

✅ What Solpay.store is about?
The project is exactly what the name says, a quick and easy way to integrate Solana Pay into your online store. We’ve built a plugin that integrates into WooCommerce stores in less than a minute. After, the merchant is ready to accept payments via Solana Pay. Right now it is a WordPress plugin, but we are ready to develop it for all the other ecommerce platforms such as Shopify, BigCommerce, Magento, Salesforce and others.
We have a live demo running at https://solpay.store/demo and 3 demo videos of how easy it is to install and set up: https://vimeo.com/solpay

Merchant integration of Solana Pay into WooCommerce. For more information: https://docs.solanapay.com/core/merchant-integration.
Requires separate service for reference generation and transaction validation which is currently set up as a Cloudflare worker.

### Custom hooks
* Filter: **apply_filters( 'wc_solana_icon_url', string $url )**
  * SolanaPayWooCommerceGateway::__construct()
  * **$url** The URL to the Payment Method image. This will be shown to users in the Checkout page

* Filter: **apply_filters( 'wc_solana_admin_fields', array $fields )**
  * SolanaPayWooCommerceGateway::init_form_fields()
  * **$fields** The list of fields to add/update to the Payment Method in the Admin screen

* Filter: **apply_filters( 'wc_solana_transaction_amount', float $amount, WC_Order $order )**
  * SolanaPayWooCommerceGateway::get_solana_transaction_amount()
  * **$amount** The transaction amount. Default: order total. See: https://docs.solanapay.com/spec#amount
  * **$order** The order instance.

* Filter: **apply_filters( 'wc_solana_transaction_label', string $label, WC_Order $order )**
  * SolanaPayWooCommerceGateway::get_solana_transaction_label()
  * **$label** The transaction label. Default: shop name. See: https://docs.solanapay.com/spec#label
  * **$order** The order instance.

* Filter: **apply_filters( 'wc_solana_transaction_message', string $message, WC_Order $order )**
  * SolanaPayWooCommerceGateway::get_solana_transaction_message()
  * **$message** The transaction message. Default: empty string. See: https://docs.solanapay.com/spec#message
  * **$order** The order instance.

* Filter: **apply_filters( 'wc_solana_transaction_memo', string $memo, WC_Order $order )**
  * SolanaPayWooCommerceGateway::get_solana_transaction_memo()
  * **$memo** The transaction memo. Default: empty string. See: https://docs.solanapay.com/spec#memo
  * **$order** The order instance.

* Filter: **apply_filters( 'wc_solana_payment_html', string $html, WC_Order $order, array $solanaPaymentConfig )**
  * SolanaPayWooCommerceGateway::thank_you_page()
  * **$html** The checkout payment HTML.
  * **$order** The order instance.
  * **$solanaPaymentConfig** Configuration array for solana payment transaction.

* Filter: **apply_filters( 'wc_solana_payment_email', $emailInstructions, $order, $sent_to_admin )**
  * SolanaPayWooCommerceGateway::email_instructions()
  * **$emailInstructions** E-mail instructions text.
  * **$order** The order instance.
  * **$sent_to_admin** Whether e-mail is sent to admin.
