exports.up = function(pgm) {
  pgm.createTable( 'ahquotes', { id: { type: 'serial', primaryKey: true },
                              name:           {type: 'string'},
                              quote:          {type: 'string'},
                              show:           {type: 'string'}
                              timestamp:      {type: 'string'},
                              videoURL:       {type: 'string'},
                              keywords:       {type: 'string'}
                            });

};

exports.down = function(pgm) {
  pgm.dropTable( 'ahquotes');

};
