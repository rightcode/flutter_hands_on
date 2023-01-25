import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';

final currentLocationProvider = FutureProvider<LocationData>((ref) async {
  Location location = Location();

  bool serviceEnabled;
  PermissionStatus permissionGranted;

  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      throw Exception();
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      throw Exception();
    }
  }

  final locationData = await location.getLocation();
  return locationData;
});
