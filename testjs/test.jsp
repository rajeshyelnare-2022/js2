<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" type="text/css" href="styles1.css" />
    <script>
    function loadiframe() {
        const allCssStylesheetsLinks = [];

// get refernce to all stylesheets
const stylesheets = document.styleSheets;

// looping through each stylesheet
// and checksing if there is href property in each item
for (let i = 0; i < stylesheets.length; i++) {
  if (stylesheets[i].href) {
    allCssStylesheetsLinks.push(stylesheets[i].href);
  }
}

// logging the array of stylesheets links
console.log("---"+allCssStylesheetsLinks);

let i = 0;

while (i < allCssStylesheetsLinks.length) {
var cssLink = document.createElement("link");
cssLink.href = allCssStylesheetsLinks[i];
i++; 
cssLink.rel = "stylesheet"; 
cssLink.type = "text/css"; 
frames['iframe1'].document.head.appendChild(cssLink);
}
    }
    </script>
</head>
<body>
    <iframe id="iframe1" name="iframe1" src="test1.jsp" width="400" height="200" onload="loadiframe()"></iframe>
test in main page
<div>div tag</div>
</body>
</html>