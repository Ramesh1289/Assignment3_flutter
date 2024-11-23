import 'dart:async';
import 'package:use_case_bloc/bloc/home_event.dart';
import 'package:bloc/bloc.dart';
import 'package:use_case_bloc/bloc/home_state.dart';
import 'package:use_case_bloc/model/ElectronicsModel.dart';
import 'package:use_case_bloc/services/api_service.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  final ApiService apiService;
  HomeBloc(this.apiService):super(HomeLoading()){
    on<FetchHomeItem>(fetchHomeEvent);
  }
  FutureOr<void> fetchHomeEvent(
      FetchHomeItem event,Emitter<HomeState> emit)async{
    emit(HomeLoading());
    try{
      await Future.delayed(const Duration(seconds: 2));
      List<Electronicsmodel> prodcuts=await apiService.getItems();
      emit(HomeLoaded(prodcuts));    }
    catch(e){
      emit(ErrorMsg("Unable to Load"));
    }
  }
}