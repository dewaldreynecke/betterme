import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
    });

    this.#addMarkersToMap();
    this.#fitMapToMarkers();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const mapMarker = document.createElement("a")
      mapMarker.href = `/location?lat=${marker.lat}&lng=${marker.lng}`;
      mapMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(mapMarker)
        .setLngLat([ marker.lng, marker.lat ])
        // .setPopup(popup)
        .addTo(this.map)

    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat]));
      this.map.fitBounds(bounds, { padding: 100, maxZoom: 250, duration: 2000 });
  }

}
