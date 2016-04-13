var html5pdf = require("html5-to-pdf");
var fs = require("fs");

// fs.createReadStream("source.html")
//   .pipe(html5pdf())
//   .pipe(fs.createWriteStream("output.pdf"));

// --- OR ---
options = {
  cssPath: 'master.css',
  paperFormat: 'A3'
};
html5pdf(options)
  .from('source.html')
  .to('output.pdf', () => console.log("Done") );
