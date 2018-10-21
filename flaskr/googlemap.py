import googlemaps
from datetime import datetime

key = 'AIzaSyDe3n4xZLVAgBWJVHDp_Pw1KJsUN_XNZA8'
gmaps = googlemaps.Client(key=key)


# Geocoding an address
def getGeolocation(addr):
    geocode_result = gmaps.geocode(addr)
    latlng = geocode_result[0]['geometry']['location']
    return latlng


def getDistance(departure, destination, mode='transit'):
    departure_time = datetime.now()
    direction_result = gmaps.directions(departure, destination, mode, departure_time)
    return direction_result
