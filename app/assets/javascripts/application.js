// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require_tree .
// $(document).ready(function() {
//   $("p").click(function() {
//     $(this).hide();
//   });
// });
$(function() {
  $("#lists th a, #lists ").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#lists_search input").keyup(function() {
    $.get(
      $("#lists_search").attr("action"),
      $("#lists_search").serialize(),
      null,
      "script"
    );
    return false;
  });
});

$(document).ready(function() {
  // hide spinner
  $("#spinner").hide();

  // show spinner on AJAX start
  $(document).ajaxStart(function() {
    $("#spinner").show();
  });

  // hide spinner on AJAX stop
  $(document).ajaxStop(function() {
    $("#spinner").hide();
  });
});

// this would be for turbolinks initailiziation
$(document).on("page:fetch", function() {
  $("#spinner").show();
});

// beacuse page:receive does not seem to work.
$(document).on("page:change", function() {
  $("#spinner").hide();
});
