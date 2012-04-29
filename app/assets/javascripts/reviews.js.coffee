$ ->
  $.get $('#data_link').attr('href'), (data) ->
    # OPTIMIZE
    d1 = $.map data, (d) -> [[d.time, d.attention]]
    d2 = $.map data, (d) -> [[d.time, d.meditation]]
    $.plot($("#plot"), [ d1, d2 ])
    $('.thumb') .appendTo($('#plot'))

  $('#plot').on 'mousemove', (e) ->
    _offset = 50
    width = $(this).width()
    left = e.offsetX - _offset
    left = _offset if left < _offset
    $('.thumb').css('left', left)

    # TODO: increase accuracy
    bgp = Math.floor(left * 20 / width) * 48
    $('.thumb').css('background-position', bgp + 'px')
