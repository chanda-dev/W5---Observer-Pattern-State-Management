import 'package:observer_pattern_state_management/EXERCISE-1/model/ride_pref.dart';

abstract class RidePrefListener {
  void onPreferenceSelected(RidePreference selectedPref);
}
