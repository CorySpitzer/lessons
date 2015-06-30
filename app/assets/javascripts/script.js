
$(function() {
  $('.title').on('click', function() {
    $('.hidden-content').slideUp("fast");
    var firstWord = this.textContent.split(' ')[0];
    $('.' + firstWord).slideDown("fast");
  });
})
