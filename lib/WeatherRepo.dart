import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

import 'WeatherModel.dart';

class WeatherRepo{

  Future <WeatherModel> getWeather(String city) async {
    Uri url=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=${city}&APPID=43ea6baaad7663dc17637e22ee6f78f2");

    final result=await http.get(url);
    if(result.statusCode!=200){
      throw Exception();
    }

    return parsedJson(result);
    
  }

  Future<WeatherModel> parsedJson(Response res) async {
    print("res");
    print(res);
    final jsonDecoded=await json.decode(res.body);
    final data=jsonDecoded["main"];

    return WeatherModel.formJson(data);
  }
}