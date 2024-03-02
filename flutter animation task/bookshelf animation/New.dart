import "package:flutter/material.dart";

import "package:flutter_application_1/defaults.dart";

import "package:flutter_application_1/main.dart";
import "package:provider/provider.dart";

class New extends StatefulWidget {
  const New({super.key, required this.numb});
  final int numb;
  @override
  State<New> createState() => _NewState();
}

Color itemcolor = Colors.white;

class _NewState extends State<New> {
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
                      tag: "location-imagen-$index",
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
                              iconcolor();
                            });