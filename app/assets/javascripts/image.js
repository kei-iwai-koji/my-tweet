

$(function() {
  var inputFile = document.getElementById('file');

  function fileChange(ev) {
    var target = ev.target;
    var files = target.files;

    console.log(files);
  }

  inputFile.addEventListener('change', fileChange, false);




  // $('#input').on('change', function() {
  //   var input = $('.hidden').val();
  //   console.log(input);
  // });
});
