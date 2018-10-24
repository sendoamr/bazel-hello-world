var hello =function () {
	console.log('Node: Hello World!');

	var fs = require('fs');
	 
	fs.readFile('resources/hello.json', 'utf8', function(err, contents) {
	    console.log(contents);
	});
}

hello();

module.exports = {
  hello: hello
};