import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';

class Location {
  Location({this.latitude, this.longitude});

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      PermissionStatus permission =
          await LocationPermissions().checkPermissionStatus();
      if (permission != PermissionStatus.granted) {
        permission = await LocationPermissions().requestPermissions();
      }

      Position position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
