// jQuery.validator.setDefaults({
//   debug: true,
//   success: "valid"
// });

// $( "#timetable" ).validate({
//   rules: {
//     timetable: {
//       required: true,
//       digits: true
//     },
//   }
// })

// $( "#myformb" ).validate({
//   rules: {
//     first_coefqua: {
//       required: true,
//       digits: true
//     },
//     second_coefqua: {
//       required: true,
//       digits: true
//     },
//     third_coefqua: {
//       required: true,
//       digits: true
//     }
//   }
// });

$("#settings").submit(function() {
    $.post({
      url: "/",
      dataType: 'json',
      data: {
        timetable: $("#timetable").val(),
        hometowork: $("#hometowork").val(),
      },

      success: console.log(data)
      //function(data) { show(data) }
    });
    return false;
});

function show(answer) {
    var json={
      "answer_for_qua" : answer['result']
    };
    console.log(answer)
    for(key in json)
    {
      if(json.hasOwnProperty(key))
        $('input[name='+key+']').val(json[key]);
    }
}

