import 'package:geolocator/geolocator.dart';

class Location{
  double latitude = 31.418715;
  double longitude = 73.079109;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
    }
    catch(e){
      print(e);
    }
  }
}