$(document).ready(function(){
  // Country Page JS
  $("#country1").on("change", function(){
    var selectedCountry1 = $('#country1 option:selected').val();
    if (selectedCountry1){
      $("#country2 option[value='"+ selectedCountry1 + "']").attr('disabled',true).siblings().attr('disabled',false);
    }else{
      $("#country1 option").attr('disabled',false);
      $("#country2 option").attr('disabled',false);
    }
  });

  $("#country2").on("change", function(){
    var selectedCountry2 = $('#country2 option:selected').val();
    if (selectedCountry2){
      $("#country1 option[value='"+ selectedCountry2 + "']").attr('disabled',true).siblings().attr('disabled',false);
    }
  });


  // Websites Page JS
  var limit1 = 5;
  var checked1 = 0;
  $('.countryweblist1').on('change', function() {
    if($(this).is(':checked'))
      checked1 = checked1 + 1;

    if($(this).is(':checked') == false)
      checked1 = checked1 - 1;

    if(checked1 > limit1) {
      this.checked = false;
      checked1 = limit1;
      Swal.fire("Limit Reached!", "You can choose maximum 5 websites at a time from each country", "warning");
    }
  });

  var limit2 = 5;
  var checked2 = 0;
  $('.countryweblist2').on('change', function() {
    if($(this).is(':checked'))
      checked2 = checked2 + 1;

    if($(this).is(':checked') == false)
      checked2 = checked2 - 1;

    if(checked2 > limit2) {
      this.checked = false;
      checked2 = limit2;
      Swal.fire("Limit Reached!", "You can choose maximum 5 websites at a time from each country", "warning");
    }
  });

  var checkboxes1 = $('.countryweblist1');
  checkboxes1.change(function(){
    if($('.countryweblist1:checked').length > 0) {
      checkboxes1.removeAttr('required');
    } else {
      checkboxes1.attr('required', 'required');
    }
  });

  var checkboxes2 = $('.countryweblist2');
  checkboxes2.change(function(){
    if($('.countryweblist2:checked').length > 0) {
      checkboxes2.removeAttr('required');
    } else {
      checkboxes2.attr('required', 'required');
    }
  });

  $('.calculateBtn').on('click', function(){
    if($('.countryweblist1:checked').length <= 0 || $('.countryweblist2:checked').length <= 0) {
      Swal.fire("Please Choose!", "You must choose at least 1 website from each country", "error");
    }
  });

});