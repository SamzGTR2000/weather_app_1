import 'package:flutter/widgets.dart';
import 'package:weather_app_1/model/weather_data_current.dart';
import 'package:weather_app_1/utils/costum_colors.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeatherWidget({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        temperatureAreaWidget(),
        currentWeatherMoreDetailsWidget(),
      ],
    );
  }

  Widget temperatureAreaWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/weather/50n.png",
          height: 80,
          width: 80,
        ),
        Container(
          height: 50,
          width: 1,
          color: CustomColors.dividerLine,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "${weatherDataCurrent.current.temp!.toInt()}",
          )
        ]))
      ],
    );
  }

  Widget currentWeatherMoreDetailsWidget() {
    return Container();
  }
}
