// import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 4 });
  };

  if (mapElement) {
  //   var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');
  // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      // style: 'mapbox://styles/mapbox/streets-v11'
      style: 'mapbox://styles/danvernon/cjszx59ml2jqs1ft55awkacds'
      // style: 'mapbox://styles/ginachen/cjt03njzw1h3o1fn9wxy6fv5y'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // <-- add this
            new mapboxgl.Marker()
              .setLngLat([ marker.lng, marker.lat ])
              .setPopup(popup) // <-- add this
              .addTo(map);
          });
      fitMapToMarkers(map, markers);
      };
  };



export { initMapbox };
