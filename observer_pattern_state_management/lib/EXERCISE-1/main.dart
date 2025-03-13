import 'package:observer_pattern_state_management/EXERCISE-1/data/dummy_data.dart';
import 'package:observer_pattern_state_management/EXERCISE-1/observers/console_logger.dart';
import 'package:observer_pattern_state_management/EXERCISE-1/service/ride_pref_service.dart';

void main() {
  RidePrefService ridePrefService = RidePrefService(fakeRidePrefs[1]);
  ConsoleLogger consoleLogger = ConsoleLogger();
  // ConsoleLoggerTwo consoleLoggerTwo = ConsoleLoggerTwo();
  ridePrefService.addListener(consoleLogger);
  // ridePrefService.addListener(consoleLoggerTwo);
  print('Your Ride pref has change to');
  ridePrefService.setNewRidePref(fakeRidePrefs[4]);
  print('Your Ride pref has been change to:');
  ridePrefService.setNewRidePref(fakeRidePrefs[3]);
}
