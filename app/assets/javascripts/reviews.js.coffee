$ ->
  $('#stop_btn').on 'click', ->
    $.get '/stop'
