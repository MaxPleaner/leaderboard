module.exports = load: (Schemas) -> (->

  @Scores = new Mongo.Collection "scores"
  @Scores.attachSchema Schemas.Score,
    tracker: Tracker
  @Scores.allow
    insert: -> true

  this
).apply {}