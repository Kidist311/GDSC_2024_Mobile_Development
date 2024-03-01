
import 'package:flutter/material.dart';
import '../page 2/task_item.dart';



class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _Todostate();
}

class _Todostate extends State<first> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: const Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.KqXvGgxk4InciPBEtofnSwHaFi?w=800&h=598&rs=1&pid=ImgDetMain'),
              ),
            ),
          ),
           Center(
             child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(231, 3, 3, 105),
          onPrimary:const Color.fromARGB(213, 253, 255, 255),
          minimumSize: const Size(10, 50),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        },
        child: const Text("Get Started"),
      ),
  
      ),
        ]
      ),
    );
  }
}
