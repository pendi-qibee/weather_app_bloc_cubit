import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc_cubit/data/weather_repository.dart';
import 'package:weather_app_bloc_cubit/pages/weather_search_page.dart';

import 'cubit/weather_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App Demo',
      home: BlocProvider(
          create: (context) => WeatherCubit(FakeWeatherRepository()),
          child: WeatherSearchPage()),
    );
  }
}
