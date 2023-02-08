import 'package:akshaya_sample/Screens/second_page.dart';
import 'package:akshaya_sample/widgets/try.dart';
import 'package:flutter/material.dart';
import 'Screens/first_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
