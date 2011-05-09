$(document).ready(function() {
  $("#apple").click(function() {
    $.get("https://mongolab.com/api/1/databases/apolzon_github/collections/entries?apiKey=4d11732643274c5e0cc02c38", function(data) {
      console.log(data);
      $("#welcome").toggle();
      $("#pages").toggle();
      $("#page1").html("<h1>B00!</h1>");
      $(data).each(function(index, item) {
        $("#page1").append("<h2>" + item["title"] + "</h2>");
        $("#page1").append("<p>" + item["content"] + "</p>");
      });
    });
  });
  $("#pages").click(function() {
    $("#pages").toggle();
    $("#welcome").toggle();
  });
});
