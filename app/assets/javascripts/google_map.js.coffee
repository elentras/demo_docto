$ ->
  if $('body[id=professionals-index]')
    markers = $('#multi_markers').data('markers')
    handler = Gmaps.build("Google")
    handler.buildMap
      internal:
        id: "multi_markers"
    , ->
      markers = handler.addMarkers(markers)
      handler.bounds.extendWith markers
      handler.fitMapToBounds()