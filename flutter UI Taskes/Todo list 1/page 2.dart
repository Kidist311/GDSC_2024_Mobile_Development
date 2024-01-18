import 'package:flutter/material.dart';
import 'package:todolist/page3.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(189, 221, 123, 78),
        // leading: const Icon(Icons.arrow_back, color: Color.fromARGB(0, 11, 11, 11)),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 100,
                child: const Text(
                  " Create a new Task",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(children: const [Text(" Main task name"),],),
          ),
            const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100),
                  ),
                  ),
                hintText: "",
                //suffixIcon: Icon(icon)
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Row(children: const [Text(" Due date"),],),
             ),
             const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(150),
                  ),
                  ),
                hintText: "enter the due date",
                suffixIcon: Icon(Icons.calendar_month_rounded)
              ),
            ),
            Padding(
               padding: const EdgeInsets.all(16.0),
               child: Row(children: const [Text(" Description"),],),
             ),
             const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100),
                  ),
                  ),
                hintText: "",
                //suffixIcon: Icon(icon)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
              child: ElevatedButton(
        onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdPage()),
              );
        },
        child: const Text("Add Task"),
        style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(210, 227, 16, 16),
              onPrimary:Color.fromRGBO(248, 247, 246, 0.871),
              minimumSize: Size(5, 50),
        ),
      ),
          ),
            ),
            ],
            ),
      ),
          
             
        
      
    );
  }
}

