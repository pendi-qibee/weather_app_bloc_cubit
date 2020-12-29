import 'package:flutter/material.dart';
import 'package:weather_app_bloc_cubit/data/model/weather.dart';

class WeatherSearchPage extends StatefulWidget {
  @override
  _WeatherSearchPageState createState() => _WeatherSearchPageState();
}

class _WeatherSearchPageState extends State<WeatherSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Search'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: buildInitialInput(),
      ),
    );
  }

  Widget buildInitialInput() => Center(child: CityInputField());

  Widget buildColumnWithData(Weather weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          weather.cityName,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '${weather.temperature.toStringAsFixed(1)} °C',
          style: TextStyle(fontSize: 80),
        ),
        CityInputField(),
      ],
    );
  }

  Widget buildLoadingIndicator() => Center(child: CircularProgressIndicator());
}

class CityInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (value) => submitCityName(context, value),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Enter city',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

void submitCityName(BuildContext context, String value) {}
