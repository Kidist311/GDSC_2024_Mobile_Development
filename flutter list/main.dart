/* This program uses cards and give a list of fruites with their description*/


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Fruit {
  final String name;
  final String description;

  Fruit({required this.name, required this.description});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 173, 255, 59), // Yellow color for app bar
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Fruit> fruits = [
    Fruit(
      name: 'Apple',
      description: 'Apples are delicious and nutritious fruits.',
    ),
    Fruit(
      name: 'Banana',
      description: 'Bananas are rich in potassium and great for energy.',
    ),
    Fruit(
      name: 'Orange',
      description: 'Oranges are packed with vitamin C.',
    ),
    Fruit(
      name: 'Grapes',
      description: 'Grapes are sweet and juicy.',
    ),
    Fruit(
      name: 'Pear',
      description: 'Pears are a good source of dietary fiber.',
    ),
    // Add more fruits here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fruit Catalog'),
        backgroundColor: Color.fromARGB(255, 163, 227, 79),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(fruits[index])),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 225, 223, 224), // Pink background for list items
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(fruits[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Fruit fruit;

  DetailScreen(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
        backgroundColor: Color.fromARGB(255, 163, 227, 79), // Pink background for detail screen app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fruit.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(fruit.description),
          ],
        ),
      ),
    );
  }
}

