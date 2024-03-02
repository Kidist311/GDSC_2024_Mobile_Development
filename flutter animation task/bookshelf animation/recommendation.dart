import "package:flutter/material.dart";

import "package:flutter_application_1/defaults.dart";

import "package:flutter_application_1/main.dart";
import "package:provider/provider.dart";

class Recomendation extends StatefulWidget {
  const Recomendation({super.key, required this.numb});
  final int numb;
  @override
  State<Recomendation> createState() => _ReadingState();
}

Color itemcolor = Colors.white;

class _ReadingState extends State<Recomendation> {
  Color iconcolor() {
    return itemcolor = Colors.yellow;
  }

  Color butten1 = Colors.white;
  Color butten2 = Colors.white;
  Color butten3 = Colors.white;

  GlobalKey<ScaffoldState> iconc = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: iconc,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Hero(
                      tag: "location-imager-$index",
                      child: Image.asset(
                        theem.assetImages[widget.numb],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10.0, left: 10, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4)),
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        theem.assetImages[widget.numb],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                color: Color.fromARGB(255, 236, 236, 236),
                child: Column(
                  children: [
                    Consumer(
                      builder: (context, value, child) {
                        return Text(
                          theem.recomendationName[widget.numb],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "book by carl sagan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: itemcolor,
                          onPressed: () {
                            setState(() {
                              iconcolor();});
                          },
                          icon: Icon(
                            Icons.star,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          color: itemcolor,
                          onPressed: () {
                            setState(() {
                              iconcolor();
                            });
                          },
                          icon: Icon(
                            Icons.star,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          color: itemcolor,
                          onPressed: () {
                            setState(() {
                              iconcolor();
                            });
                          },
                          icon: Icon(
                            Icons.star,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          color: itemcolor,
                          onPressed: () {
                            setState(() {
                              iconcolor();
                            });
                          },
                          icon: Icon(
                            Icons.star,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: butten1,
                            onPressed: () {
                              setState(() {
                                butten1 = Colors.red;
                              });
                            },
                            child: Text("Free"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          MaterialButton(
                              minWidth: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: butten2,
                              onPressed: () {
                                setState(() {
                                  butten2 = Colors.red;
                                });
                              },
                              child: Icon(Icons.heart_broken)),
                          SizedBox(
                            width: 8,
                          ),
                          MaterialButton(
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: butten3,
                              onPressed: () {
                                setState(() {
                                  butten3 = Colors.red;
                                });
                              },
                              child: Icon(Icons.share)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: 30,
                    width: 6,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Book Information",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  theem.recomendationbookinfo[widget.numb],
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    height: 30,
                    width: 6,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "About Author",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Consumer(
                  builder: (context, value, child) {
                    return Text(
                      theem.recaboutAuthor[widget.numb],
                      style: TextStyle(fontWeight: FontWeight.w300),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "User Review",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/y.jpg"),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Yared",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "This is amazing",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Oct 2023",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Related Books',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: theem.assetImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          theem.assetImages[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text(
                  "Start Reading",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                color: const Color.fromARGB(255, 54, 33, 243),
                minWidth: 200,
                height: 40,
                splashColor: const Color.fromARGB(255, 44, 224, 50),
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                //shape: CircleBorder(side: BorderSide(width: 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}