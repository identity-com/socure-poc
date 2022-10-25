const mix = require('laravel-mix');
let distPath = 'dist';

mix
  .webpackConfig(webpack => {
    return {
      resolve: {
        fallback: {
          'stream': require.resolve('stream-browserify'),
          "crypto": require.resolve("crypto-browserify"),
          "assert": require.resolve("assert/"),
          "process": false,
        }
      },
      module: {
        rules: [
          {
            test: /\.m?js$/,
            resolve: {
              fullySpecified: false,
            },
          },
        ]
      },
      plugins: [
        new webpack.optimize.LimitChunkCountPlugin({
          maxChunks: 1,
        }),
        new webpack.ProvidePlugin({
          Buffer: ["buffer", "Buffer"],
        }),
        new webpack.ProvidePlugin({
          process: 'process/browser'
        }),
      ],
    };
  })
  .typeScript('js/index.tsx', distPath + '/js/solana-payment-gateway.js');
