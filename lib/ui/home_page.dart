import 'package:use_case_bloc/theme/theme.dart';
import 'package:use_case_bloc/ui/product_item.dart';
import 'package:flutter/material.dart';
import 'package:use_case_bloc/bloc/home_state.dart';
import 'package:use_case_bloc/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:use_case_bloc/bloc/home_bloc.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(FetchHomeItem());
    return MaterialApp(
      theme:ThemeModel.lightTheme ,
      darkTheme:ThemeModel.darkTheme ,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text('Bloc List View',
            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 26,color: Colors.black),
          ),
        ),
        body:Container(
            child: BlocBuilder<HomeBloc,HomeState>(builder:(context,state){
              if(state is HomeLoading){
                return const Center(
                  child:
                  const SizedBox(
                      height: 50,width: 50,
                      child:CircularProgressIndicator()),
                );
              }
              if(state is HomeLoaded){
                return ListView.builder(
                    itemCount: state.productList.length,
                    itemBuilder: (context,index){
                      return ProductItem(
                          productmodel:state.productList[index]);
                    });
              }
              if(state is ErrorMsg){
                return Center(
                  child: Text(state.errorMessage),
                );
              }
              return const SizedBox();
            })
        ),
      ),
    );
  }
}

