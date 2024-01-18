import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todolist/page2.dart';
import 'package:todolist/page3.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  get color => null;

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
              child: const Image(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.6e08d40dc8cb0d38d0a150f58367d697?rik=fNAde3HS%2fK0NkA&riu=http%3a%2f%2fwww.sites.redcartsolutions.com%2fsites%2fwww.refutureyourlife.com%2ffiles%2fimages%2fchecklist.jpg&ehk=KPCP3nSzb4%2bOFpIneCnSnoGm%2ffW45EKpCV%2bJKDITsqA%3d&risl=&pid=ImgRaw&r=0')),
            ),
          ),
          const Text(
            "Task List",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: const [
                    Text("U"),
                    SizedBox(width: 33),
                    Text("UI/UX App \n Design"),
                    SizedBox(
                      width: 250,
                    ),
                    Text("April 29, 2023")
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: const [
                    Text("U"),
                    SizedBox(width: 30),
                    Text("UL/UX App \n Design"),
                    SizedBox(
                      width: 250,
                    ),
                    Text("April 29,2030")
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: const [
                    Text("V"),
                    SizedBox(width: 30),
                    Text("view Candidates"),
                    SizedBox(
                      width: 225,
                    ),
                    Text("April 29, 2023")
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: const [
                    Text("F"),
                    SizedBox(width: 30),
                    Text("Football Cu Drybling"),
                    SizedBox(
                      width: 200,
                    ),
                    Text("April 29,2023")
                  ],
                ),
              ),
            ),
          ),
          
        
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
        onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
        },
        child: const Text("Create Task"),
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
    );
  }
}

