$ ->
  $('#start_review').on 'click', ->
    $.get @href, (data) ->
      if data.status == 'ok'
        $('#start_review').hide()
        $('#stop_review').show()
 
      else
        alert "Another review is now being performed. Wait, please."
      false
  $('#start_review').click()

  $('#stop_review').on 'click', ->
    $.get @href, ->
      window.location += "/../.."
    false
