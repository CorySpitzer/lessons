
$(function() {
  $('.title').on('click', function() {
    var firstWord = this.textContent.split(' ')[0];
    $('.' + firstWord).slideDown();
  });
})
