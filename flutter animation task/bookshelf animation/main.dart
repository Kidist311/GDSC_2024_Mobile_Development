
//import 'package:bookstore/page/newpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 172, 225)),
        useMaterial3: true,
      ),
      //home: const AnimaPage(),
      home: const Homepage(),
    );
  }
}
