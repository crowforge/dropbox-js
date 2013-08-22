# Controller code for the application.
# The dropbox.js sample code is here.

nconf = require 'nconf'

dbxMiddleware = (error, request, response, next) ->
  state = req.params.state
  # TODO(pwnall): check state
  code = req.params.code

module.exports = (app) ->
  app.get '/', (request, response) ->
    response.render 'index.toffee'

  app.get '/dropbox_oauth', dbxMiddleware, (request, response) ->

