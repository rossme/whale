import mapboxgl from 'mapbox-gl';

// CREATES THE WINDOW TO FIT EXACTLY AROUND THE MARKERS
const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 3, duration: 0 });
  };

// MAIN FUNCTION OF MAPBOX
const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/satellite-v9',
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url(https://docs.mapbox.com/help/demos/custom-markers-gl-js/mapbox-icon.png)`;
        element.style.backgroundSize = 'contain';
        element.style.width = '30px';
        element.style.height = '30px';

        new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
    // CALLS THE ELEMENT WITHIN initMapbox()
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
