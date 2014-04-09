var ldap = require('ldapjs');
var es = require('./lib/elasticsearch');
var elastical = require('elastical');
var client = new elastical.Client('localhost', {port: 9200});

var BASEDN = 'o=uds.io';

var server = ldap.createServer();

server.search( 'o=uds.io', function(req, res, next) {
    var q = es.filter(req.filter) || {};

//		q.index = '_all';
		
		q.type = 'identity';
		
		console.log( 'req.filter', req.filter );
		console.log( 'elastic.q', q );

    client.search({query: q}, function(err, result, resp) {
	
        if (result && result.total > 0) {
					console.log( 'result.total', result.total );
	
            result.hits.forEach(function(hit) {
	
							console.log( 'hit._source', hit._source );
             	res.send({
             		dn: 'mail=' + hit._source.mail + ',' + BASEDN,
              	attributes: hit._source
							});
						
         		});

        } else {
					console.log( 'result.total: no results!', err );
				}

        res.end();
        return next();
    });
});


server.listen(1389, '0.0.0.0', function() {
  console.log('LDAP server listening at %s', server.url);
});
