

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  get width => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" TODO LIST"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(189, 221, 123, 78),
        // leading: const Icon(Icons.arrow_back, color: Color.fromARGB(0, 11, 11, 11)),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 200,
              width: 100,
              child:const Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/180/070/large_2x/to-do-list-vector.jpg'),),
              ),

          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: const [Text(" Title", style: TextStyle( fontWeight: FontWeight.bold),),],),
                ),
                
                Container(
                  child: Text(""),
                  width: 650,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 211, 209, 209),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: const [Text(" Description", style: TextStyle( fontWeight: FontWeight.bold),),],),
                ),
               
                Container(
                  child: const Text(" "),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 210, 206, 206),
                  ),
                  width: 650,
                  height: 60,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: const [Text(" Deadline", style: TextStyle( fontWeight: FontWeight.bold),),],),
                ),
              
                Container(
                  child: Text(""),
                  width: 650,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 211, 211, 211),
                  ),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}

