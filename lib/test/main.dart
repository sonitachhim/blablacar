import '../model/ride/ride.dart';
import '../dummy_data/dummy_data.dart';

List<Ride> getTodaysRides() {
  DateTime today = DateTime.now();
  return fakeRides.where((ride) {
    return ride.departureDate.year == today.year &&
        ride.departureDate.month == today.month &&
        ride.departureDate.day == today.day;
  }).toList();
}

void main() {
  print(getTodaysRides());
}