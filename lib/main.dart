import 'package:flutter/material.dart';
import 'screen/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
