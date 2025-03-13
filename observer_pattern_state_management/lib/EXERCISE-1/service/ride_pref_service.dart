import 'package:observer_pattern_state_management/EXERCISE-1/model/ride_pref.dart';
import 'package:observer_pattern_state_management/EXERCISE-1/observers/ride_pref_listener.dart';

class RidePrefService {
  RidePreference _ridePreference;
  final List<RidePrefListener> _listeners = [];

  RidePrefService(this._ridePreference);

  // to add listener
  void addListener(RidePrefListener listener) {
    _listeners.add(listener);
  }

  // to change the ride pref
  void setNewRidePref(RidePreference newPref) {
    _ridePreference = newPref;
    _notifyListeners();
  }

  // to notify or show what is change or add (in here we get it from console Logger)
  void _notifyListeners() {
    for (var listener in _listeners) {
      listener.onPreferenceSelected(_ridePreference);
    }
  }
}
