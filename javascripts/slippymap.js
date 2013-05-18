var lat=37;
var lon=135;
var zoom=5;

var map;

// Initialise the 'map' object
$(function init() {
	var baseMaps = {
		"custom": L.tileLayer("http://map.summoncircle.com/osm-custom/{z}/{x}/{y}.png", {
			attribution: 'Map data &copy; <a href="http://www.osm.org">OpenStreetMap</a>',
			maxZoom: 20
			}),
		"english": L.tileLayer("http://map.summoncircle.com/osm-custom-en/{z}/{x}/{y}.png", {
			attribution: 'Map data &copy; <a href="http://www.osm.org">OpenStreetMap</a>',
			maxZoom: 20
			}),
		"original": L.tileLayer("http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"/*"/osm/{z}/{x}/{y}.png"*/, {
			attribution: 'Map data &copy; <a href="http://www.osm.org">OpenStreetMap</a>',
			maxZoom: 18
			})
	};
	map = L.map('map', {
			center: new L.LatLng(lat, lon),
			zoom: zoom,
			maxZoom: 20,
			layers: [baseMaps.custom]
	});
	L.control.layers(baseMaps).addTo(map);
	L.control.scale({metric:true, imperial:false}).addTo(map);
	L.control.locate().addTo(map);
	// permalink needed...
	if (!map.restoreView()) {
			map.setView([lat, lon], zoom);
	}
});
