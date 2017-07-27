{ Meteor } = require("meteor/meteor")

Schemas = require '../lib/schemas.coffee'
Collections = require("../lib/collections.coffee").load(Schemas)

{ Scores } = Collections

Meteor.publish 'scores', ->
  Scores.find({})