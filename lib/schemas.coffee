SimpleSchema = require("simpl-schema").default
SimpleSchema.extendOptions ['autoform']

module.exports =
  Score: new SimpleSchema
    user_id: 
      type: Number
    game_name:
      type: String
      label: "game name"
    score:
      type: Number
      label: "score"
