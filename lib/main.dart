import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/services/news_services.dart';
void main(){
  // NewsServices(dio: Dio()).getGeneralNews();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
      dragDevices: {PointerDeviceKind.mouse},
    ),
      debugShowCheckedModeBanner: false,
      title: 'News App',
      routes: {
        HomeView.routeName: (_) => HomeView(),
        CategoryView.routename: (_) => CategoryView(),
      },
      initialRoute: HomeView.routeName,
    );
  }
}
