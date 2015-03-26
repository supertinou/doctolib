$(document).ready ->
  markers_array = $('#map').data('markers')
  handler = Gmaps.build('Google')
  handler.buildMap {
    provider: {}
    internal: id: 'map'
  }, ->
    markers = handler.addMarkers(markers_array)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()