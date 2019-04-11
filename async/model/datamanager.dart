import 'dart:io';
import 'dart:convert';

class DataManager {
  static final instance = DataManager._internal();

  var _httpClient = HttpClient();

  factory DataManager() {
    return instance;
  }

  DataManager._internal() {
    //_httpClient.userAgent = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";
  }

  getWeatherInfo(String cityId) async {
    var uri = Uri.http("www.weather.com.cn", "/data/cityinfo/$cityId.html");
    var request = await _httpClient.getUrl(uri);
    var response = await request.close();
    return await response.transform(Utf8Decoder()).join();
  }
}
