import 'dart:math';

void main(List<String> args) {
  distance({Latitude1, Latitude2, Longitude1, Longitude2}) {
    double R = 637100;
    double latitudeDifferece = Latitude2 - Latitude1;
    double longitudeDifferece = Longitude2 - Longitude1;
    double a = pow(sin(latitudeDifferece / 2), 2) +
        cos(Latitude1) * cos(Latitude2) * pow(sin(longitudeDifferece / 2), 2);
    double sqrtOfA = sqrt(a);
    double n = 1 - sqrtOfA;
    double sqrtOfA_1 = sqrt(n);
    double c = 2 * atan2(sqrtOfA, sqrtOfA_1);
    double distance = R * c;
    print('${distance.toString()} m');
  }

  distance(
      Latitude1: 35463564.0,
      Latitude2: 6456457373.0,
      Longitude1: 452524564.0,
      Longitude2: 25443575363.0);
}
