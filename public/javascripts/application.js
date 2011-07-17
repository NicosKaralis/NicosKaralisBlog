// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){
	$(".clippy").live({
    'clippycopy': function(e, data) {
      data.text = $(this).children(".clippy_code").text();
    },
    'clippyover': function() {
      $(this).children(".clippy_label").text("copy to clipboard");
    },
    'clippyout': function() {
      $(this).children(".clippy_label").text("");
    },
    'clippycopied': function() {
      $(this).children(".clippy_label").text("copied");
    }
  });
});