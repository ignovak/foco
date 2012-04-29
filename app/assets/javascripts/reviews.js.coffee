$ ->
  $.get $('#data_link').attr('href'), (data) ->
    # OPTIMIZE
    d1 = $.map data, (d) -> [[d.time, d.attention]]
    d2 = $.map data, (d) -> [[d.time, d.meditation]]
    $.plot($("#plot"), [ d1, d2 ])
