

import 'package:bloc/bloc.dart';
import 'package:test_app_for_bloc/WeatherRepo.dart';
import 'package:test_app_for_bloc/bloc/blocStates.dart';

import '../WeatherModel.dart';
import 'blocEvents.dart';

class WeatherBloc extends Bloc<blocEvents,blocStates>{
  WeatherRepo weatherRepo;
  WeatherBloc(this.weatherRepo) : super(WeatherNotSearched());

  blocStates get initialState=>WeatherNotSearched();

  @override
  Stream<blocStates> mapEventToState(blocEvents event)   async* {
    if(event is FetchWeather){
      yield WeatherIsLoading();

      try{

        WeatherModel weather=await weatherRepo.getWeather("Sahiwal");
        print(weather);

        yield WeatherIsLoaded(weather);
        print("here");

      }catch(e){
        yield WeatherNotLoaded();
      }
    }else if(event is ResetWeather){
      yield WeatherNotSearched();
    }
  }

}