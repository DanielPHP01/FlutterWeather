class WheatherModel {
  final String locationName;
  final String region;
  final String country;
  final double latitude;
  final double longitude;
  final String timezoneId;
  final int localtimeEpoch;
  final String localtime;
  final String lastUpdated;
  final double temperatureCelsius;
  final double temperatureFahrenheit;
  final bool isDay;
  final String conditionText;
  final String conditionIcon;
  final int conditionCode;
  final double windMph;
  final double windKph;
  final int windDegree;
  final String windDirection;
  final double pressureMb;
  final double pressureIn;
  final double precipMm;
  final double precipIn;
  final int humidity;
  final int cloud;
  final double feelsLikeCelsius;
  final double feelsLikeFahrenheit;
  final double visibilityKm;
  final double visibilityMiles;
  final double uv;
  final double gustMph;
  final double gustKph;

  WheatherModel({
    required this.locationName,
    required this.region,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.timezoneId,
    required this.localtimeEpoch,
    required this.localtime,
    required this.lastUpdated,
    required this.temperatureCelsius,
    required this.temperatureFahrenheit,
    required this.isDay,
    required this.conditionText,
    required this.conditionIcon,
    required this.conditionCode,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDirection,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeCelsius,
    required this.feelsLikeFahrenheit,
    required this.visibilityKm,
    required this.visibilityMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory WheatherModel.fromJson(Map<String, dynamic> json) {
    return WheatherModel(
      locationName: json["location"]["name"],
      region: json["location"]["region"],
      country: json["location"]["country"],
      latitude: json["location"]["lat"],
      longitude: json["location"]["lon"],
      timezoneId: json["location"]["tz_id"],
      localtimeEpoch: json["location"]["localtime_epoch"],
      localtime: json["location"]["localtime"],
      lastUpdated: json["current"]["last_updated"],
      temperatureCelsius: json["current"]["temp_c"],
      temperatureFahrenheit: json["current"]["temp_f"],
      isDay: json["current"]["is_day"] == 1,
      conditionText: json["current"]["condition"]["text"],
      conditionIcon: json["current"]["condition"]["icon"],
      conditionCode: json["current"]["condition"]["code"],
      windMph: json["current"]["wind_mph"],
      windKph: json["current"]["wind_kph"],
      windDegree: json["current"]["wind_degree"],
      windDirection: json["current"]["wind_dir"],
      pressureMb: json["current"]["pressure_mb"],
      pressureIn: json["current"]["pressure_in"],
      precipMm: json["current"]["precip_mm"],
      precipIn: json["current"]["precip_in"],
      humidity: json["current"]["humidity"],
      cloud: json["current"]["cloud"],
      feelsLikeCelsius: json["current"]["feelslike_c"],
      feelsLikeFahrenheit: json["current"]["feelslike_f"],
      visibilityKm: json["current"]["vis_km"],
      visibilityMiles: json["current"]["vis_miles"],
      uv: json["current"]["uv"],
      gustMph: json["current"]["gust_mph"],
      gustKph: json["current"]["gust_kph"],
    );
  }
}
