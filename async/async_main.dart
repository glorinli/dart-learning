import './model/datamanager.dart';

final String CITY_ID_XIAMEN = "101230201";

main() {
  printApiResult();
}

void printApiResult() async {
  String result = await requestApi();
  print("Result is: $result");
}

Future requestApi() async {
  return DataManager.instance.getWeatherInfo(CITY_ID_XIAMEN);
}