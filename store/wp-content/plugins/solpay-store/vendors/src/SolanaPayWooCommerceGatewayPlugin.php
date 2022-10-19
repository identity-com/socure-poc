<?php

//#! Exit if this file is accessed directly
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

class SolanaPayWooCommerceGatewayPlugin {
    public const VERSION = '1.3.1';

    /**
     * Stores the reference to the instance of this class
     * @var null|SolanaPayWooCommerceGatewayPlugin
     */
    private static ?SolanaPayWooCommerceGatewayPlugin $_instance = null;

    /**
     * Plugin constructor.
     */
    private function __construct() {
    }

    /**
     * Retrieve the reference to the instance of this class
     * @return null|self
     */
    public static function getInstance(): ?SolanaPayWooCommerceGatewayPlugin
    {
        if ( is_null( self::$_instance ) || ! ( self::$_instance instanceof self ) ) {
            self::$_instance = new self;
        }

        return self::$_instance;
    }

    public static function getAssetsVersion(): string
    {
        if ( defined( 'WP_DEBUG' ) && WP_DEBUG === true ) {
            return (string) time();
        }

        return self::VERSION;
    }
}
