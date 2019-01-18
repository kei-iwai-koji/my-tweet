$(document).on('turbolinks:load',function() {
  $('.fa-comment').on('click', function() {
    $('.comments-container').fadeIn('slow');
    return false;
  });
  $('.cancel-icon').on('click', function() {
    $('.comments-container').fadeOut('fast');
  });
});
