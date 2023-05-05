import 'dart:math';

void main(List<String> args) {
  distance({Latitude1, Latitude2, Longitude1, Longitude2}) {
    Latitude1 = Latitude1 * (3.14 / 180.0);
    Latitude2 = Latitude2 * (3.14 / 180.0);
    Longitude1 = Longitude1 * (3.14 / 180.0);
    Longitude2 = Longitude2 * (3.14 / 180.0);
    double R = 6371;
    double latitudeDifferece = Latitude2 - Latitude1;
    double longitudeDifferece = Longitude2 - Longitude1;
    double a = pow(sin((latitudeDifferece / 2)), 2) +
        cos(Latitude1) * cos(Latitude2) * pow(sin(longitudeDifferece / 2), 2);
    double sqrtOfA = sqrt(a);
    double n = 1 - sqrtOfA;
    double sqrtOfA_1 = sqrt(n);
    double c = 2 * atan2(sqrtOfA, sqrtOfA_1);
    double distance = R * c;

    print('${distance.toString()} km');
  }

  distance(
      Latitude1: 10.7408000000003,
      Latitude2: 10.791590000000042,
      Longitude1: 6.471850000000074,
      Longitude2: 6.4261600000000385);
}
