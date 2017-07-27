{ Template } = require("meteor/templating")

require './main.html'

Schemas = require '../lib/schemas.coffee'
Helpers = require '../lib/helpers.coffee'
Collections = require('../lib/collections.coffee').load(Schemas)

Object.assign window, Collections

{ Scores } = Collections

(->
  @onCreated ->
    Meteor.subscribe 'scores'
  @helpers
    scores: ->
      Scores.find({}).fetch()

).apply Template.scoresList
  
show_errors = ($errors) -> (errors) ->
  errors.forEach (error) ->
    $error = $ """
      <li class='error'>#{error}</li>
    """
    $errors.append $error
    setTimeout ->
      $error.remove()
    , 2000

$ ->
  $errors = $("#errors")
  (->
    @catch_validation_errors(
      Object.values(Schemas)...,
      show_errors($errors)
    )
  ).apply Helpers
