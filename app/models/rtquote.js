module.exports = function(sequelize, DataTypes) {
  return sequelize.define('rtquotes', {
    name            : DataTypes.STRING,
    quote           : DataTypes.STRING,
    show            : DataTypes.STRING,
    timestamp       : DataTypes.STRING,
    videoURL        : DataTypes.STRING,
    keywords        : DataTypes.STRING
  }
);
}
