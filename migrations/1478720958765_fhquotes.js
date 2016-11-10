exports.up = function(pgm) {
  pgm.createTable( 'fhquotes', { id: { type: 'serial', primaryKey: true },
                              name:           {type: 'string'},
                              quote:          {type: 'string'},
                              show:           {type: 'string'},
                              timestamp:      {type: 'string'},
                              videoURL:       {type: 'string'},
                              keywords:       {type: 'string'},
                              createdAt:      {type: 'datetime'},
                              updatedAt:      {type: 'datetime'}
                            });

};

exports.down = function(pgm) {
  pgm.dropTable( 'fhquotes');
};
