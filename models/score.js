module.exports = (sequelize, data_types) ->
  sequelize.define "Score", {
    user: DataTypes.STRING
    game:DataTypes.STRING
    value: DataTypes.Integer
  }, {
    classMethods:
      associate: (models) ->
  }