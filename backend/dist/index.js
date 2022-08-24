
'use strict'

if (process.env.NODE_ENV === 'production') {
  module.exports = require('./socure-poc-backend.cjs.production.min.js')
} else {
  module.exports = require('./socure-poc-backend.cjs.development.js')
}
