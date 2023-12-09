class Current {
  String time;
  int interval;
  double temperature2M;
  double windSpeed10M;

  Current({
    required this.time,
    required this.interval,
    required this.temperature2M,
    required this.windSpeed10M,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        time: json["time"],
        interval: json["interval"],
        temperature2M: json["temperature_2m"]?.toDouble(),
        windSpeed10M: json["wind_speed_10m"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "interval": interval,
        "temperature_2m": temperature2M,
        "wind_speed_10m": windSpeed10M,
      };
}
