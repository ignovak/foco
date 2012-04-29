$ ->
  $.get $('#data_link').attr('href'), (data) ->
    console.log data
    $.plot($("#plot"), [ data ])
