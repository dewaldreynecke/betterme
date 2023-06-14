import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element , // container ID
      style: 'mapbox://styles/mapbox/streets-v12', // style URL
    });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.#setupMarkerClickEvent()
  }

  #addMarkersToMap() {
      this.markersValue.forEach ((marker) => {
        const markerElement = document.createElement('a');
        markerElement.href = `/entries/location/${marker.lat}/${marker.lng}`
        markerElement.className = 'marker';
        markerElement.dataset.entryId = marker.entryId;

        const markerPopup = new mapboxgl.Popup({ closeButton: false, offset: 25 }).setHTML(markerElement.href);

        markerElement.addEventListener('click', () => {
          window.location.href = markerElement.href;
        });

        new mapboxgl.Marker({element: markerElement})
          .setLngLat([marker.lng, marker.lat])
          .setPopup(markerPopup)
          .addTo(this.map);
      })
    }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}
