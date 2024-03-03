


import 'package:euff/next.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _Homepagestate();
}

class _Homepagestate extends State<Homepage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(
          255,
          245,
          245,
          245,
        ),
        leading: const Icon(
          Icons.format_align_left,
          color: Color.fromARGB(245, 1, 5, 7),
        ),
        title: const Text(
          "GDSC BOOKSTORE",
          style: TextStyle(
              color: Color.fromARGB(231, 9, 4, 4),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: (Colors.blue),
                    ),
                    height: 50,
                    width: 300,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        hintText: "looking for",
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(231, 23, 118, 187),
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(Icons.notification_add,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(230, 89, 160, 237),
                      Color.fromARGB(193, 45, 94, 209),
                      Color.fromARGB(230, 68, 138, 213),
                    ],
                  ),
                ),
                height: 150,
                child: Column(
                  children: [
                    Row(
                      children: const [
                            SizedBox(
                              width: 370,
                            ),
                            Text("Sep 23,2023",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 252, 252, 251),),
                                    ),], 
                          ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                            SizedBox(
                              height: 25, width: 100,
                            ),
                           Icon(
                                   Icons.pause,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                  ),
                               SizedBox(
                              width: 70,),    
                            Text("Today a reader \n tomorrow a",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 252, 252, 251),),
                                    ),
                                SizedBox(
                              width: 50,),
                            Icon(
                                   Icons.pause,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                  ),
                                  SizedBox(
                              width: 100,),
                                  ],
                            
                        ),
                    Row(
                      children: const [
                            SizedBox( height: 25,
                              width: 150,
                            ),
                            Text(" L E A D E R",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Color.fromARGB(255, 252, 252, 251),),
                                    ),SizedBox(
                              width: 100,
                            ),
                                    ], 
                          ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                            SizedBox(
                              height: 25, width: 180,
                            ),
                           Icon(
                                   Icons.star,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                  ),
                               SizedBox(
                              width: 30,),    
                          Icon(
                                   Icons.save,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                  ),  
                                SizedBox(
                              width: 30,),
                            Icon(
                                   Icons.share,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                  ),
                                  SizedBox(
                              width: 100,),
                                  ],
                            
                        ),
                  ],
                ), 
              ),
                             
               ],
            ),
        ),
          Column(
                children: [
                  const Text(
                    "categories",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Wrap(
                    children: [
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children:const [
                              Icon(Icons.health_and_safety_outlined),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child:  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children:const [
                              Icon(Icons.science),
                              Text("science")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: const[
                              Icon(Icons.history),
                              Text("History")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: const[
                              Icon(Icons.mic_external_on_sharp),
                              Text("biology")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: const[
                              Icon(Icons.book),
                              Text("chemistry")
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // style: TextStyle(fontSize: 20),
                  const SizedBox(
                    height: 40,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text(
                        "Recommendation",
                        style: TextStyle(fontSize: 20),
                      ),
                      //SizedBox(width:50 ,),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  //ListView(scrollDirection: HorizontalDragGestureRecognizer,)
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.network("https://th.bing.com/th/id/OIP.8TD_d_dRAQZ9nMWBjjB8pwHaLe?rs=1&pid=ImgDetMain")),
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                              Navigator.push(
                                    context,PageTransition(child:const NewBody(), type: PageTransitionType.rightToLeft,duration:const Duration(milliseconds: 1000 ))
                                    );
                              },
                              child: const Text("The hobit"),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.network("https://th.bing.com/th/id/OIP.IvepMc571hRho-KwgRwESwHaLE?w=1170&h=1749&rs=1&pid=ImgDetMain")),
                            ),
                          ),
                          const Center(child: Text("faces"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.network("https://th.bing.com/th/id/R.9dad4d12b1503e53f84d92629e9308ac?rik=b6Zuc%2bOBPyaONg&riu=http%3a%2f%2f25.media.tumblr.com%2f608b09440f69798a7f8b7b79bfb3bac0%2ftumblr_mhsnaqi6Go1r7vfwgo2_1280.jpg&ehk=rJyDQM34tON0B7H%2fcUE2RNc1t81LemPh2KkO6sRyIS4%3d&risl=&pid=ImgRaw&r=0")),
                            ),
                          ),
                          const Center(child: Text("Blood Rose"))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text(
                        "New",
                        style: TextStyle(fontSize: 20),
                      ),
                      //SizedBox(width:50 ,),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  //ListView(scrollDirection: HorizontalDragGestureRecognizer,)
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.network("https://www.bing.com/images/search?view=detailV2&ccid=KxCX5nxk&id=C95818CC3F72C0B49B8EEA0B3A0EF0703FB4574D&thid=OIP.KxCX5nxkDaYbWpSR6PGslQHaLK&mediaurl=https%3a%2f%2fimages-na.ssl-images-amazon.com%2fimages%2fI%2f81bsw6fnUiL.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.2b1097e67c640da61b5a9491e8f1ac95%3frik%3dTVe0P3DwDjoL6g%26pid%3dImgRaw%26r%3d0&exph=2560&expw=1698&q=rich+dad+poop+dad&simid=608025751804591018&FORM=IRPRST&ck=30439A8BC02FA832A6CB4B99A27A8336&selectedIndex=0&itb=0")),
                            ),
                          ),
                          const Center(child: Text("rich dad poor dad"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.network("https://th.bing.com/th?id=OIF.fKkPpkVAXkogFI%2bbpndIDw&rs=1&pid=ImgDetMain")),
                            ),
                          ),
                          const Center(child: Text("Resilent Teen"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("https://th.bing.com/th?id=OIF.fKkPpkVAXkogFI%2bbpndIDw&rs=1&pid=ImgDetMain")),
                            ),
                          ),
                          const Center(child: Text("Resilent Teen"))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ]),
    );
  }
}

