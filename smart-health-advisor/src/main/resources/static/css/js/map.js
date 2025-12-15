// map.js – Google Map and Location Finder

function initMap() {
    let defaultLocation = { lat: 20.5937, lng: 78.9629 }; // India center

    let map = new google.maps.Map(document.getElementById("map"), {
        zoom: 5,
        center: defaultLocation
    });

    let infoWindow = new google.maps.InfoWindow();

    // Try to get user's current location
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            (pos) => {
                let userLocation = {
                    lat: pos.coords.latitude,
                    lng: pos.coords.longitude
                };

                map.setCenter(userLocation);
                map.setZoom(14);

                new google.maps.Marker({
                    position: userLocation,
                    map: map,
                    title: "You Are Here"
                });
            },
            () => {
                infoWindow.setContent("Location access denied.");
            }
        );
    }
}
