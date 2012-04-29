$ ->
  $('#start_review').on 'click', ->
    $.get @href, (data) ->
      if data.status == 'ok'
        $('#start_review').hide()
        $('#stop_review').show()
      else
        alert "Another review is now being performed. Wait, please."
    false

  $('#stop_review').on 'click', ->
    $.get @href, ->
      $('#start_review').show()
      $('#stop_review').hide()
    false
