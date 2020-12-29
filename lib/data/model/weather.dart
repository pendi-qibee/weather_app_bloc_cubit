import 'package:flutter/material.dart';

class Weather {
  final String cityName;
  final double temperature;

  Weather({@required this.cityName, @required this.temperature});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Weather &&
        other.cityName == cityName &&
        other.temperature == temperature;
  }

  @override
  int get hashCode => cityName.hashCode ^ temperature.hashCode;
}
