

import 'package:apiintegration_sample1/viewScreens/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: HomePageView(),
    );
  }
}

