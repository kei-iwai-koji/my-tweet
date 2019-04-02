$(document).on('turbolinks:load',function() {
  $('.main__tweet-menu__list').hide();

  $('.main__tweet-menu').on('mouseleave', function() {
    $(".main__tweet-menu__list").hide();
  });

  $('.icon').on('click', function() {
    $(this).next("div").toggle();
  });
});
