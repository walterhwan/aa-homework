console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
   type: 'GET',
   url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=b3f3afe7c950012492df79e0cfccf03c",
   success(data) {
     console.log("We have your weather!");
     console.log(data);
   },
   error() {
     console.error("An error occurred.");
   },
});


// Add another console log here, outside your AJAX request
console.log("End of index.js");
