import 'package:location/location.dart';
import 'package:registro_ponto/src/widgets/custom_dialogs/custom_dialogs.dart';

class LocationUtils {
  static Future<bool> checkPermission() async {
    final location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        await CustomDialogs.locationServiceRequiredDialog();
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        await CustomDialogs.locationServiceRequiredDialog();
        return false;
      }
    }
    if (permissionGranted == PermissionStatus.granted) {
      return true;
    } else {
      await CustomDialogs.locationServiceRequiredDialog();
      return false;
    }
  }

  static Future<LocationData?> getLocation() async {
    final hasPermission = await checkPermission();
    final location = Location();
    LocationData? locationData;

    if (hasPermission) locationData = await location.getLocation();

    return locationData;
  }
 }
