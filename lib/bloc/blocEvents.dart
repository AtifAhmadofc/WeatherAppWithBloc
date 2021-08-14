

import 'package:equatable/equatable.dart';

class blocEvents extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class FetchWeather extends blocEvents{
  final city;
  FetchWeather(this.city);

  @override
  // TODO: implement props
  List<Object?> get props => [city];

}
class ResetWeather extends blocEvents{

}