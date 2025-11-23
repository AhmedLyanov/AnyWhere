import 'package:flutter/foundation.dart';
import '../../../data/services/location_service.dart';

class LocationViewModel extends ChangeNotifier {
  final LocationService _service = LocationService();

  double? lat;
  double? lon;

  Future<void> updateLocation() async {
    final position = await _service.getCurrentPosition();
    lat = position.latitude;
    lon = position.longitude;
    notifyListeners();
  }
}
