# =============================================================================
# The server
# =============================================================================

express = require 'express'

start_server = (routes_fn) ->
  port = process.env.PORT || 3000
  app = express()
  routes_fn.apply app, [app]
  app.listen port, -> console.log("Listening on port #{port}")

start_server ->
  @get '/', (req, res) ->
    res.send "hello"
