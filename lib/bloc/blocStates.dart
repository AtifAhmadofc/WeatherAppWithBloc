

import 'package:equatable/equatable.dart';
import 'package:test_app_for_bloc/WeatherModel.dart';

class blocStates extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class WeatherNotSearched extends blocStates{

}
class WeatherIsLoading extends blocStates{

}
class WeatherIsLoaded extends blocStates{
  final _weather;
  WeatherIsLoaded(this._weather);

  WeatherModel get getWeather=>_weather;

  @override
  // TODO: implement props
  List<Object?> get props => [_weather];

}
class WeatherNotLoaded extends blocStates{

}
