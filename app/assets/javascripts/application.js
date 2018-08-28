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
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(function() {
var b="a";
var a="a";
$('.btn-name').hover(
  function() {
    $('.btn-name').css('background-color', '#00CC66');
    $('.btn-name').css('color', '#fff');
    $(this).click(function() {
      a = "b";
      $('.btn-kind').css('background-color', '#66CCCC');
      // a = "a"
    })
  },
  function() {
    if (a == "a") {
      $('.btn-name').css('background-color', '#66CC99');
    }
  }
)

$('.btn-kind').hover(
  function() {
  	b="a";
    $('.btn-kind').css('background-color', '#00CCFF');
    $('.btn-kind').css('color', '#fff');
    $(this).click(function() {
      b = "b";
      a="a";
      $('.btn-name').css('background-color', '#66CC99');

    })
  },
  function() {
    if (b == "a") {
      $('.btn-kind').css('background-color', '#66CCCC');
    }
  }
)
$('.skill').click(function() {
	if ($(this).parent().hasClass('btn-click')) {
		$(this).parent().removeClass('btn-click');
	} else {
		$(this).parent().addClass('btn-click');
	}
})
})

$(function(){
  $('#menu li').hover(function(){
    $("ul:not(:animated)", this).slideDown();
  }, function(){
    $("ul.child", this).slideUp();
  });
});



$(function(){
  $('.ab').on('click', function(){
    $('.modal_wrapper').fadeIn(500);
    if ($(this).hasClass('aa')){
      $('.a').fadeIn(500);
    }else {
      $('.b').fadeIn(500);
    }
  })
  $('.aaa').click(function() {
    $('.modal_wrapper').fadeOut(500);
    $('.a').fadeOut(500);
    $('.b').fadeOut(500);
  })
  $('.modal_wrapper').click(function(e) {
    if (!$(e.target).closest('.a, .b').length) {
      $('.modal_wrapper').fadeOut(500);
      $('.a').fadeOut(500);
      $('.b').fadeOut(500);
    }
  })


  $(document).on("ajax:success", "#aaa", function(e) {
    $('.room-text').val("");
    $('.room-main').html(e.detail[2]["response"])
  })
})


