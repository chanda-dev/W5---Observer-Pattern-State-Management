import 'package:observer_pattern_state_management/EXERCISE-1/model/ride_pref.dart';
import 'package:observer_pattern_state_management/EXERCISE-1/observers/ride_pref_listener.dart';

class ConsoleLogger implements RidePrefListener {
  @override
  void onPreferenceSelected(RidePreference selectedPref) {
    print('Selected ride pref=> console 1');
    print(selectedPref.departure);
    print(selectedPref.departureDate);
    print(selectedPref.arrival);
    print(selectedPref.requestedSeats);
  }
}

class ConsoleLoggerTwo implements RidePrefListener {
  @override
  void onPreferenceSelected(RidePreference selectedPref) {
    print('Selected ride pref=> console 2');
    print(selectedPref.departure);
    print(selectedPref.departureDate);
    print(selectedPref.arrival);
    print(selectedPref.requestedSeats);
  }
}
