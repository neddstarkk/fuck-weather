import 'package:geolocator/geolocator.dart';

class Location {
  Location({this.latitude, this.longitude});

  double latitude;
  double longitude;
  var geolocator = Geolocator();

  Future<void> getCurrentLocation() async {
    try {
      GeolocationStatus permission = await Geolocator().checkGeolocationPermissionStatus();
      if (permission == GeolocationStatus.denied) {
        ;
      }
      Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );

      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e) {
      print(e);
    }
  }
}