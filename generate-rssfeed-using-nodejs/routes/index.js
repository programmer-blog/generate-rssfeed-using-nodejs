var express = require('express');
var router = express.Router();
const Feed = require('feed')
var orm     = require('orm');
var fs     = require('fs');
var dirPath = __dirname + "/../public/rss/rssfeed.xml";

router.use(orm.express("mysql://root:@localhost:/dbnews", {
	define: function (db, models, next) {
		models.news = db.define("tbl_news", {
      title        : String,
  		description  : String,
  		publish_date : Date
    });
  	next();
	}
}));
let feed = new Feed({
  title: 'Generate RSS feed wtih NodeJS',
  description: 'Generate RSS feed wtih NodeJS',
  author: {
    name: 'Programmer blog',
    link: 'http://programmerblog.net/'
  }
})
/* GET home page. */
router.get('/', function(req, res, next) {
  var result = req.models.news.find({
         // "id" : 1
  }, function(error, news){
      if(error) throw error;
      for(var i=0; i< news.length; i++){
         var myFormattedDate = news[i]['publish_date'].toISOString().substring(0, 10);
         var newarr = myFormattedDate.split('-');
         var year = newarr[0];
         var month = newarr[1];
         var day = newarr[2];
         feed.addItem({
              title: news[i]['title'],
              link:"http://localhost/news/"+news[i]['id'],
              description: news[i]['description'],
              author: [{
                name: 'Jane Doe',
                email: 'janedoe@example.com',
                link: 'https://example.com/janedoe'
              }],
              date: new Date(year,month, day),
            });
            //var doc = feed.atom1();

        }
        var rssdoc = feed.rss2();
        //console.log(doc);
        fs.writeFile(dirPath, rssdoc, function(err) {
           if(err) { return console.log(err); }

       });
         res.render('index');
  });
});
// npm install feed --save

module.exports = router;
