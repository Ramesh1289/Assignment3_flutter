import 'package:use_case_bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:use_case_bloc/bloc/home_event.dart';
import 'package:use_case_bloc/screens/splash_screen.dart';
import 'package:use_case_bloc/services/api_service.dart';
import 'package:use_case_bloc/bloc/home_state.dart';
import 'package:use_case_bloc/bloc/home_state.dart';
import 'package:use_case_bloc/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeBloc(ApiService()),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const SplashScreen(),
              '/home': (context) => const HomeScreen()
            }

        )
    );
  }
}