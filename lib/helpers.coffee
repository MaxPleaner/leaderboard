module.exports = (->

  @catch_validation_errors = (schemas..., fn) ->
    Meteor.startup -> Tracker.autorun ->
      schemas.forEach (schema) ->
        context = schema.newContext()
        fn(context.validationErrors()) if !context.isValid()

  this

).apply {}