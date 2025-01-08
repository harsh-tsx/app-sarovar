import 'dart:math';

/// Calculates the distance in meters between two geographic coordinates.
/// [lat1], [lon1] are the latitude and longitude of the first point.
/// [lat2], [lon2] are the latitude and longitude of the second point.
double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371000; // Radius of the Earth in meters

  double toRadians(double degree) => degree * pi / 180;

  double dLat = toRadians(lat2 - lat1);
  double dLon = toRadians(lon2 - lon1);

  double a = sin(dLat / 2) * sin(dLat / 2) +
      cos(toRadians(lat1)) *
          cos(toRadians(lat2)) *
          sin(dLon / 2) *
          sin(dLon / 2);

  double c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c; // Distance in meters
}
