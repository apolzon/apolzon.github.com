$(document).ready(function() {
  $("#apple").click(function() {
    $("#welcome").toggle();
    $("#pages").toggle();
  });
  $("#pages").click(function() {
    $("#pages").toggle();
    $("#welcome").toggle();
  });
});
