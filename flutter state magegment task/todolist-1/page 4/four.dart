import 'package:flutter/material.dart';
import '../page 2/list.dart';

class LastPage extends StatelessWidget {
  
  const LastPage({required this.us, required this.me,
});

  final ListOne me;
  final DateTime us;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Task Ditail'),
        centerTitle: true,
        actions: [Icon(Icons.arrow_drop_down_circle)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Container(
              height: 100,
              width: 100,
              child: const Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/180/070/large_2x/to-do-list-vector.jpg'),),
              ),

            
            const Text('Tasks',style: TextStyle( fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  color: Color.fromARGB(191, 209, 207, 207),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(me.title),
                  ),
                ),
              ),
            ),
            const Text('Discription',style: TextStyle( fontWeight: FontWeight.bold),),
            SizedBox(
              height: 100,
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  color: Color.fromARGB(191, 209, 207, 207),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(me.discription),
                  ),
                ),
              ),
            ),
            const Text('Due Date',style: TextStyle( fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                  color: Color.fromARGB(191, 209, 207, 207),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(us.toString()),
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
