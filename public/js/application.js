$(document).ready(function() {

  $('button').on("click", function(e){
    e.preventDefault();
    var quote = $('.yoda').text()
    console.log(quote)
  })

});
