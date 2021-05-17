$(function(){
  var data = [
    '@example_1',
    '@example_2',
    '@example_3',
    '@example_4'
  ]
  $('#suggest').autocomplete({
    source: function (request, response) {
      $.ajax({//ここから下がajaxの処理
        url: '/search',
        type: 'GET',
        dataType: "json",
        data: { keyword: request.term },//②
        success: function(data){
          response(data);
        },
        error: function(xhr, ts, err){//③
        resp(['']);
        }
      });
    },
//    source: data,
    autoFocus: true,
    delay: 300,
    minLength: 1
  });
});