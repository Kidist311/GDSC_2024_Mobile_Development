import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_1/page 1/first.dart';
import '../page 2/provider.dart';
void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Project(initialDate:DateTime.now()),
       child: MaterialApp(
          //title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 205, 103, 49)),
            useMaterial3: true,
          ),
         
            
          
         home: const first(),
        ),
     );
  
  }
}

