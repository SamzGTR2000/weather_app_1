import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_1/controller/global_controller.dart';
import 'package:weather_app_1/utils/costum_colors.dart';
import 'package:weather_app_1/widgets/comfort_level.dart';
import 'package:weather_app_1/widgets/current_weather_widget.dart';
import 'package:weather_app_1/widgets/daily_data_forecast.dart';
import 'package:weather_app_1/widgets/header_widget.dart';
import 'package:weather_app_1/widgets/hourly_data_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // call
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Obx(
        () => globalController.checkLoading().isTrue
            ? Center(
                child: Image.asset(
                  "assets/icons/clouds.png",
                  height: 200,
                  width: 200,
                ),
              )
            : Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const HeaderWidget(),
                    // for current temperature ('current')
                    CurrentWeatherWidget(
                      weatherDataCurrent:
                          globalController.getWeatherData().getCurrentWeather(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HourlyDataWidget(
                        weatherDataHourly: globalController
                            .getWeatherData()
                            .getHourlyWeather()),
                    DailyDataForecast(
                      weatherDataDaily:
                          globalController.getWeatherData().getDailyWeather(),
                    ),
                    Container(
                      height: 1,
                      color: CustomColors.dividerLine,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ComfortLevel(
                        weatherDataCurrent: globalController
                            .getWeatherData()
                            .getCurrentWeather()),
                  ],
                ),
              ),
      ),
    ));
  }
}
