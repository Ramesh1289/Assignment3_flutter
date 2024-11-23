
import 'package:use_case_bloc/data/EletronicsData.dart';
import 'package:use_case_bloc/model/ElectronicsModel.dart';

abstract class HomeState{}

class HomeLoading extends HomeState{}

class HomeLoaded extends HomeState{
  final List<Electronicsmodel> productList;
  HomeLoaded(this.productList);
}

class ErrorMsg extends HomeState{
  String errorMessage;
  ErrorMsg(this.errorMessage);
}

