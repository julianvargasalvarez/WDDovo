$.getJSON(
    "https://api.twitter.com/1/trends/weekly.json?callback=?",
    { name:"#" },
    function(data) {
     for(var i= 0; i<data.count)
	    alert(data) 
  }
)
