const mix = require( 'laravel-mix' );
let distPath = 'dist';

mix
    .webpackConfig(webpack => {
        return {
            resolve: {
                fallback: {
                    'stream': require.resolve('stream-browserify')
                }
            },
            plugins: [
                new webpack.optimize.LimitChunkCountPlugin({
                    maxChunks: 1,
                }),
            ],
        };
    })
    .typeScript('js/index.ts', distPath + '/js/solana-payment-gateway.js');
