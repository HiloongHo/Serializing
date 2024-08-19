import 'package:dio/dio.dart';
import 'package:serializing/weather.dart';

final dio = Dio();

void main() {
  getHttp();
}

void getHttp() async {
  final response = await dio.get(
      'https://restapi.amap.com/v3/weather/weatherInfo?Key=ca5d840008b86fe2276e7a42b938c622&city=510106&extensions=all');

  final weather1 = Weather.fromJson(response.data);

  // 检查 forecasts 是否不为 null
  if (weather1.forecasts != null) {
    // 遍历 forecasts 列表，打印每一条预报
    for (var forecast in weather1.forecasts!) {
      print('城市: ${forecast.city}');
      print('报告时间: ${forecast.reporttime}');

      // 检查 casts 是否不为 null
      if (forecast.casts != null) {
        for (var cast in forecast.casts!) {
          print('日期: ${cast.date}');
          print('星期: ${cast.week}');
          print('白天天气: ${cast.dayweather}');
          print('夜间天气: ${cast.nightweather}');
          print('白天温度: ${cast.daytemp}');
          print('夜间温度: ${cast.nighttemp}');
          print('白天风向: ${cast.daywind}');
          print('夜间风向: ${cast.nightwind}');
          print('白天风力: ${cast.daypower}');
          print('夜间风力: ${cast.nightpower}');
          print('白天温度(浮点): ${cast.daytempFloat}');
          print('夜间温度(浮点): ${cast.nighttempFloat}');
          print('---');
        }
      } else {
        print('没有可用的天气预报数据。');
      }
    }
  } else {
    print('没有可用的城市预报数据。');
  }
}
