var sql = require('mysql');
var connection = sql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'hqdb',
  multipleStatements : true
});


exports.lastWeekPerformance = function (args, callback) {
	var outlet_id = args.outlet_id;
	console.log(outlet_id);
	if(outlet_id!==null) {
		var query = 'SELECT p.name as name, r.revenue as revenue, DATE_FORMAT(r.date,\'%Y-%m-%d\') as date from revenue r inner join product p on p.barcode'+
					' = r.barcode WHERE r.outlet_id=' +outlet_id+' AND r.date>=SUBDATE(CURDATE(),7);';

		connection.query(query, function(err, rows, fields) {
			if(!err) {
				console.log("Retrieval successful!");
				console.log(rows);
				callback(null,rows);
			} else {
				console.log("ERROR encountered : " + err);
				callback(true,null);
			}
		});
	} else {
		console.log("Invalid or absent parameters");
		callback(true,null);
	}
};

exports.allOutletsRevenue = function(args,callback) {
	var query = 'SELECT o.s_name as name, r.revenue as revenue, FORMAT((r.revenue / t.total)*100,0) as percent'+
				' from outlet o,revenue r,(SELECT SUM(revenue) as total from revenue where date=SUBDATE(CURDATE(),1)) t '+
				' where o.id=r.outlet_id and r.date=SUBDATE(CURDATE(),1) ;';

	connection.query(query, function(err,rows,fields) {
		if(!err) {
			console.log("Retrieval successful!");
			callback(null,rows);
		} else {
			console.log("ERROR encountered : " + err);
			callback(true,null);
		}
	});
};