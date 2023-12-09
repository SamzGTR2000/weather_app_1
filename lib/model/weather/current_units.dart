class CurrentUnits {
  String time;
  String interval;
  String temperature2M;
  String windSpeed10M;

  CurrentUnits({
    required this.time,
    required this.interval,
    required this.temperature2M,
    required this.windSpeed10M,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) => CurrentUnits(
        time: json["time"],
        interval: json["interval"],
        temperature2M: json["temperature_2m"],
        windSpeed10M: json["wind_speed_10m"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "interval": interval,
        "temperature_2m": temperature2M,
        "wind_speed_10m": windSpeed10M,
      };
}
