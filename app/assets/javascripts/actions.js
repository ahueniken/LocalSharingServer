$(document).ready(
         function() {
         	var pathname = window.location.pathname;
         	var search = window.location.search;
         	console.log(pathname + search);
          setInterval(function() {
            $('.dynamic').load("/actions/refresh/" + search);
        }, 3000);
        console.log("test");
    }); 