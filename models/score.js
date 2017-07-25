'use strict';
module.exports = function(sequelize, DataTypes) {
  var Score = sequelize.define('Score', {
    user: DataTypes.STRING,
    game: DataTypes.STRING,
    value: DataTypes.INTEGER
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });
  return Score;
};