import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:use_case_bloc/model/ElectronicsModel.dart';

class ApiService{
  final String BASEURL='https://api.jsonbin.io/v3/b/67406dd6acd3cb34a8accacc?meta=false';
  Future<List<Electronicsmodel>> getItems() async{
    await Future.delayed(Duration(seconds: 2));
    var response=await http.get(Uri.parse(BASEURL));
    //return List.generate(10, (index)=>"Item ${index+1}");
    List<dynamic>list=json.decode(response.body);
    List<Electronicsmodel> product=
        list.map((json)=>Electronicsmodel.fromJson(json)).toList();
    return product;
  }
}