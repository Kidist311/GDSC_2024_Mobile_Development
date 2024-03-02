import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/defaults.dart';
import 'package:flutter_application_1/new.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/recomendation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int index = 0;

class _MyAppState extends State<MyApp> {
  List icons = [
    Icons.monitor_heart_outlined,
    Icons.science_outlined,
    Icons.history_edu,
    Icons.schema_outlined,
    Icons.cast_for_education,
  ];
  List assetImages = [
    "assets/a.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/d.jpg",
    "assets/ef.jpg",
    "assets/f.jpg",
  ];
  List imageName = [
    "Fiker eske\n mekabir",
    "Andromeda principle\n of ethiopia",
    "Birekrikta",
    "Reach dad\npoor dad",
    "Man search\nfor meaning",
    "Roots"
  ];

  List text = [
    "Health",
    "Science",
    "technology",
    "History",
    "Philosophy",
  ];
  int count = 0;
  List trendingImages = [
    "assets/d.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/a.jpg",
  ];

  final randomIndex = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => theem(),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: const Icon(
                Icons.sort,
                color: Colors.black,
                size: 40,
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "GDSC BOOKSTORE",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0, top: 10),
                          child: SizedBox(
                            height: 50,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  label: const Text(
                                    "Looking for ...",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                          height: 40,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 50,
                          minWidth: 60,color: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.tune_rounded),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[700],
                        ),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 200.0),
                              child: Text(
                                "sep 23,2023",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.pause,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Today a reader\n tomorrow a",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        "LEADER",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.save_outlined,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white,size: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.pause,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Catagories",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            color: Colors.black12,
                            child: Row(
                              children: [
                                //files.icons[index],
                                Icon(icons[index]),
                                const SizedBox(width: 10),
                                Text(text[index]),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Recomendation",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: assetImages.length,itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Hero(
                                  tag: "location-imager-$index",
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Recomendation(numb: index)));
                                    },
                                    child: Image.asset(
                                      assetImages[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text(imageName[index]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //second image

                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "New",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: theem.newImages.length,
                      itemBuilder: (context, index) {
                        // final random = Random();
                        // final selectedIndex = random.nextInt(6);

                        return SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: 130,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                New(numb: index)));
                                  },
                                  child: Hero(
                                    tag: "location-imagen-$index",
                                    child: Image.asset(
                                      theem.newImages[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Text(imageName[index]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //third imageconst SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Trending",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingImages.length,
                      itemBuilder: (context, index) {
                        count = index;
                        //final randomIndex = Random().nextInt(assetImages.length);
                        return SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                height: 150,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Reading(num: index)));
                                  },
                                  child: Hero(
                                    tag: "location-imaget-$index",
                                    child: Image.asset(
                                      trendingImages[index],
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Text(theem.trendingName[index]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.black38,
              //backgroundColor: Colors.blue[100],
              type: BottomNavigationBarType.shifting,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(theem.icons[0]),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(theem.icons[1]),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(theem.icons[2]),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(theem.icons[3]),
                  label: 'share',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
