import 'package:flutter/material.dart';
import 'package:signup/pages/login.dart';

void main(){
  runApp(MyPage());
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
       "/":(context)=>LogIn(),
      },

    );
  }

}