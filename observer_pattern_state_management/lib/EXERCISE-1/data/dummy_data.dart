import 'dart:math';

import 'package:observer_pattern_state_management/EXERCISE-1/model/locations.dart';
import 'package:observer_pattern_state_management/EXERCISE-1/model/ride_pref.dart';

final Random random = Random();

///
/// FACE DATA FOR TEST PURPOSE
///

// Fake Cities
const List<Location> fakeLocations = [
  // UK Cities
  Location(name: "London", country: Country.uk),
  Location(name: "Manchester", country: Country.uk),
  Location(name: "Birmingham", country: Country.uk),
  Location(name: "Liverpool", country: Country.uk),
  Location(name: "Leeds", country: Country.uk),
  Location(name: "Glasgow", country: Country.uk),
  Location(name: "Sheffield", country: Country.uk),
  Location(name: "Bristol", country: Country.uk),
  Location(name: "Edinburgh", country: Country.uk),
  Location(name: "Leicester", country: Country.uk),
  Location(name: "Coventry", country: Country.uk),
  Location(name: "Nottingham", country: Country.uk),
  Location(name: "Newcastle", country: Country.uk),
  Location(name: "Southampton", country: Country.uk),
  Location(name: "Portsmouth", country: Country.uk),
  Location(name: "Aberdeen", country: Country.uk),
  Location(name: "Swansea", country: Country.uk),
  Location(name: "Oxford", country: Country.uk),
  Location(name: "Cambridge", country: Country.uk),

  // France Cities
  Location(name: "Paris", country: Country.france),
  Location(name: "Lyon", country: Country.france),
  Location(name: "Marseille", country: Country.france),
  Location(name: "Toulouse", country: Country.france),
  Location(name: "Nice", country: Country.france),
  Location(name: "Nantes", country: Country.france),
  Location(name: "Strasbourg", country: Country.france),
  Location(name: "Montpellier", country: Country.france),
  Location(name: "Bordeaux", country: Country.france),
  Location(name: "Lille", country: Country.france),
  Location(name: "Rennes", country: Country.france),
  Location(name: "Reims", country: Country.france),
  Location(name: "Saint-Étienne", country: Country.france),
  Location(name: "Toulon", country: Country.france),
  Location(name: "Angers", country: Country.france),
  Location(name: "Grenoble", country: Country.france),
  Location(name: "Dijon", country: Country.france),
  Location(name: "Le Havre", country: Country.france),
  Location(name: "Brest", country: Country.france),
  Location(name: "Battambong", country: Country.kh),
  Location(name: "SiemReap", country: Country.kh)
];

// Fake Ride Preferences
List<RidePreference> fakeRidePrefs = [
  RidePreference(
    departure: fakeLocations[0], // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: fakeLocations[3], // Paris
    requestedSeats: 2,
  ),
  RidePreference(
    departure: fakeLocations[1], // Manchester
    departureDate: DateTime.now().add(Duration(days: 7)), // Next week
    arrival: fakeLocations[4], // Lyon
    requestedSeats: 3,
  ),
  RidePreference(
    departure: fakeLocations[2], // Birmingham
    departureDate: DateTime.now(), // Today
    arrival: fakeLocations[5], // Marseille
    requestedSeats: 1,
  ),
  RidePreference(
    departure: fakeLocations[0], // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: fakeLocations[3], // Paris
    requestedSeats: 2,
  ),
  RidePreference(
    departure: fakeLocations[4], // Manchester
    departureDate: DateTime.now().add(Duration(days: 7)), // Next week
    arrival: fakeLocations[0], // Lyon
    requestedSeats: 3,
  ),
  RidePreference(
    departure: fakeLocations[5], // Birmingham
    departureDate: DateTime.now(), // Today
    arrival: fakeLocations[1], // Marseille
    requestedSeats: 1,
  ),
  // RidePreference(
  //     departure: fakeLocations[38],
  //     departureDate: DateTime.now(),
  //     arrival: fakeLocations[39],
  //     requestedSeats: 1)
];
