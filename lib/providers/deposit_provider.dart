import 'package:flutter/material.dart';
import 'package:shopping_cart/core/models/station_model.dart';

class DepositProvider extends ChangeNotifier {
  double _ammount = 0;
  double get ammount => _ammount;

  void deposit(double value) {
    _ammount = _ammount + value;
    notifyListeners();
  }

  List<StationModel> stations = [
    StationModel(
      station: 'Abuja',
      type: 'Natural',
      orbit: 'Earth',
    ),
    StationModel(
      station: 'Spock',
      type: 'Natural',
      orbit: 'Mars',
    ),
    StationModel(
      station: iSS,
      type: 'ManMade',
      orbit: 'Earth',
    ),
    StationModel(
      station: 'Moon',
      type: 'Natural',
      orbit: 'Earth',
    ),
  ];

  StationModel? fromStationValue;
  StationModel? toStationValue;

  setFromStationValue(StationModel value) {
    fromStationValue = value;
    notifyListeners();
  }

  setToStationValue(StationModel value) {
    toStationValue = value;
    notifyListeners();
  }

  List<String> rockets = [
    'Falcon 1',
    'Falcon 9',
  ];

  String? rocketValue = 'Falcon 1';

  setRocketValue(String value) {
    rocketValue = value;
    notifyListeners();
  }

  int _fare = 0;
  int get fare => _fare;
  Future book() async {
    const int manMadeCharge = 200;
    const int landingOnAnotherOrbit = 250;
    const int landingInSameOrbit = 50;
    if ((fromStationValue!.orbit == 'Earth' &&
            fromStationValue!.type == 'Natural') &&
        (toStationValue!.orbit == 'Earth' &&
            toStationValue!.type == 'Natural')) {
      _fare =
          rocketValue != falcon9 ? landingInSameOrbit : landingInSameOrbit * 2;
      notifyListeners();
    }

    if (((fromStationValue!.orbit == 'Earth' &&
                fromStationValue!.type == 'Natural') &&
            (toStationValue!.orbit == 'Mars' &&
                toStationValue!.type == 'Natural')) ||
        ((fromStationValue!.orbit == 'Mars' &&
                fromStationValue!.type == 'Natural') &&
            (toStationValue!.orbit == 'Earth' &&
                toStationValue!.type == 'Natural'))) {
      _fare = rocketValue != falcon9
          ? landingOnAnotherOrbit
          : landingOnAnotherOrbit * 2;

      notifyListeners();
    }

    if ((fromStationValue!.orbit == 'Earth' &&
            fromStationValue!.type == 'ManMade') &&
        (toStationValue!.orbit == 'Earth' &&
            toStationValue!.type == 'Natural')) {
      _fare =
          rocketValue != falcon9 ? landingInSameOrbit : landingInSameOrbit * 2;

      notifyListeners();
    }

    if ((fromStationValue!.orbit == 'Earth' &&
            fromStationValue!.type == 'Natural') &&
        (toStationValue!.orbit == 'Mars' &&
            toStationValue!.type == 'Natural')) {
      _fare = rocketValue != falcon9
          ? landingOnAnotherOrbit
          : landingOnAnotherOrbit * 2;

      notifyListeners();
    }

    if ((fromStationValue!.orbit == 'Earth' &&
            fromStationValue!.type == 'Natural') &&
        (toStationValue!.orbit == 'Earth' &&
            toStationValue!.type == 'ManMade')) {
      _fare = rocketValue != falcon9
          ? manMadeCharge + landingInSameOrbit
          : manMadeCharge + (landingInSameOrbit * 2);

      notifyListeners();
    }

    if ((fromStationValue!.orbit == 'Mars' &&
            fromStationValue!.type == 'Natural') &&
        (toStationValue!.orbit == 'Earth' &&
            toStationValue!.type == 'ManMade')) {
      _fare = rocketValue != falcon9
          ? manMadeCharge + landingOnAnotherOrbit
          : manMadeCharge + (landingOnAnotherOrbit * 2);

      notifyListeners();
    }
  }

  void confirmPayment() {
    _ammount = _ammount - _fare;
    notifyListeners();
  }
}

const iSS = 'International Space Station';
const falcon9 = 'Falcon 9';
