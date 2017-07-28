{ Meteor } = require("meteor/meteor")

Schemas = require '../lib/schemas.coffee'
Collections = require("../lib/collections.coffee").load(Schemas)

{ Scores } = Collections

Meteor.publish 'scores', ->
  Scores.find({})

Meteor.publish 'scores_by_user', (user_id) ->
  Scores.find(user_id: parseInt(user_id))
, {
  url: "publications/scores/by_user/:0"
  httpMethod: "get"
}

Meteor.publish 'scores_by_game', (game_name) ->
  Scores.find(game_name: game_name)
, {
  url: "publications/scores/by_game/:0"
  httpMethod: "get"
}

Meteor.method "add_score", (score_obj) ->
  Scores.insert score_obj