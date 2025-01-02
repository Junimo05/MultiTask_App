class WeatherDataSource {
  final String baseUrl = 'https://api.open-meteo.com/v1/forecast';

//https://api.open-meteo.com/v1/forecast?latitude=16.1667&longitude=107.8333&current=temperature_2m,relative_humidity_2m,is_day,weather_code,wind_speed_10m&timezone=Asia%2FBangkok
//     {
//     "latitude": 16,
//     "longitude": 107.75,
//     "generationtime_ms": 0.05602836608886719,
//     "utc_offset_seconds": 25200,
//     "timezone": "Asia/Bangkok",
//     "timezone_abbreviation": "+07",
//     "elevation": 1002,
//     "current_units": {
//         "time": "iso8601",
//         "interval": "seconds",
//         "temperature_2m": "°C",
//         "relative_humidity_2m": "%",
//         "is_day": "",
//         "weather_code": "wmo code",
//         "wind_speed_10m": "km/h"
//     },
//     "current": {
//         "time": "2025-01-02T14:30",
//         "interval": 900,
//         "temperature_2m": 15.3,
//         "relative_humidity_2m": 93,
//         "is_day": 1,
//         "weather_code": 3,
//         "wind_speed_10m": 6.2
//     }
// }
  // Future<Map<String, dynamic>> getWeatherData(double latitude, double longitude) async {

  // }
}
