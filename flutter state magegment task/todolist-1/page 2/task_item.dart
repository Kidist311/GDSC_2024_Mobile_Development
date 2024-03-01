import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_1/page%202/provider.dart';
import 'package:training_1/page%203/third.dart';
import 'package:training_1/page%204/four.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;

 
  
 
  @override
  Widget build(BuildContext context) {
    Project todos = Provider.of<Project>(context);
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Column(
          children: [const Image(
          image:NetworkImage('https://th.bing.com/th/id/R.6e08d40dc8cb0d38d0a150f58367d697?rik=fNAde3HS%2fK0NkA&riu=http%3a%2f%2fwww.sites.redcartsolutions.com%2fsites%2fwww.refutureyourlife.com%2ffiles%2fimages%2fchecklist.jpg&ehk=KPCP3nSzb4%2bOFpIneCnSnoGm%2ffW45EKpCV%2bJKDITsqA%3d&risl=&pid=ImgRaw&r=0'),
          height: 20,
          width: 30,
          
          ),



           const Text('Tasks List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30) ,),
          
               
              ListView.builder(
                    itemCount: todos.allTasks.length, 
                    itemBuilder: (context, index) {
          
                    
                      final main = todos.allTasks[index];
                      final time = todos.selectedDate;
                      return GestureDetector(
                        onTap: () {
                     
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> LastPage(us: time, me: main)));
                        },
                
                          child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 25,
                                  ),
                                 
                                  child: Container(
                                    child: Row(
                                      
                                      children: [
                                       CircleAvatar(
                                                                child: Text(
                                    todos.allTasks[index].title[0].toUpperCase(),
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 24, 23, 22),
                                    ),
                                                                ),
                                                              ),
                                        const SizedBox(width: 8),
                                        Text(todos.allTasks[index].title),
                                        const SizedBox(width: 1000), //spacing                
                                        Text(todos.selectedDate.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                        );
                    
                    }
          
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Next() ));
      },
      child:const Icon(Icons.add) ,),
              
    );
  }
}
