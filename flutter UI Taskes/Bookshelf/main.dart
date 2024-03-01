
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _Homepagestate();
}

 


class _Homepagestate extends State<Homepage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 400,
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
             Column(children: [
                const SizedBox(height: 25, width: 0,),
                Row(children:const  [
                  Text("Catagories", style: TextStyle(fontSize: 20),),
                ]),
                Wrap(
                    children: [
                      Card(
                        color: Color.fromARGB(214, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const [
                              Icon(Icons.health_and_safety_rounded),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(218, 222, 219, 219),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                        
                          
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(226, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const [
                              Icon(Icons.history_edu),
                              Text("History")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color:Color.fromARGB(226, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                         /* child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onDoubleTap: _xstate,
                              child: Row(children: [
                               const Icon(Icons.computer),
                               if (x)
                                const Text( 'tech')
                               else 
                                const Text('technology')
                              ]),
                            ),
                          ),*/
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(215, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children:const [ 
                              Icon(Icons.book),
                               Text(" Philosophy"),
                               ],),
                          ),
                        ),
                      ),
                    ],
                ),
                const SizedBox(height: 40,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(      
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                        Text(
                          "Recommendation",
                          style: TextStyle(fontSize: 20),
                        ),
                       
                        Icon(Icons.arrow_forward),
                    ],
                  ),
                     ),
                  
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                       
                      children: [
                        Column(
                          children: const [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Card(
                                child: ClipRRect(
                                    child: Image(image: NetworkImage('https://th.bing.com/th/id/R.9f06efe10d1a342115ffa09455fbb4ca?rik=Sm9W6sfVbE2cbQ&pid=ImgRaw&r=0'),),),
                              ),
                            ),
                             Center(child: Text("Extiniction Event"))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 40,
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Card(
                                child: ClipRRect(
                                    child: Image(image: NetworkImage('https://i.pinimg.com/originals/6b/5f/f9/6b5ff90d2b50c81272084ad99eaf340a.jpg')),),
                              ),
                            ),
                            Center(child: Text("Space Cat"))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 40,
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Card(
                                child: ClipRRect(
                                    child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.M0xb-4s9JMmP0wHkAeCFHgHaLH?rs=1&pid=ImgDetMain'))),
                              ),
                            ),
                            Center(child: Text("Dead Star"))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 40,
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Card(
                                child: ClipRRect(
                                    child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.M0xb-4s9JMmP0wHkAeCFHgHaLH?rs=1&pid=ImgDetMain'))),
                              ),
                            ),
                            Center(child: Text("Dead Star"))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          width: 40,
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Card(
                                child: ClipRRect(
                                    child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.M0xb-4s9JMmP0wHkAeCFHgHaLH?rs=1&pid=ImgDetMain'))),
                              ),
                            ),
                            Center(child: Text("Dead Star"))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "New",
                          style: TextStyle(fontSize: 20),
                        ),
                     
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: const[
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.SQoeJTEy-HfnF5oROxmZcgHaJj?rs=1&pid=ImgDetMain')))
                            ),
                          ),
                          Center(child: Text("Reach Dad poor Dad"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children:const [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.aqXoQEjl4uhHQ3sfwVUkZwHaLE?rs=1&pid=ImgDetMain')))
                            ),
                          ),
                          Center(child: Text("Born Crime"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children:const [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.-QJCW6KJuYQVwzgqqEDohwAAAA?rs=1&pid=ImgDetMain'))),
                            ),
                          ),
                         Center(child: Text("From Potters Field"))
                        ],
                      )
                    ],
                  )
                ],
              ),
             //ElevatedButton(onPressed: _xstate, child:Text("start"))
            ],
      ),
    
      bottomNavigationBar:
      BottomNavigationBar(items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), label: 'home',
          backgroundColor: Color.fromARGB(205, 46, 122, 209),),

        BottomNavigationBarItem(
          icon: Icon(Icons.search), label: 'search',
          backgroundColor: Color.fromARGB(205, 46, 122, 209),),

         BottomNavigationBarItem(
          icon: Icon(Icons.person), label: 'profile',
          backgroundColor: Color.fromARGB(205, 46, 122, 209),),

      ],
          
      ),
    );
    
    
  }
}

