//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../page 2/list.dart';
import '../page 2/provider.dart';

//import '../page 2/provider.dart';


class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);
  @override
  State<Next> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<Next> {
 TextEditingController xl = TextEditingController();
    TextEditingController Ml = TextEditingController();
    
     //Dt =  ();

    void _presentDatepicker() async{
    final now = DateTime.now();
    final firstdate = DateTime(now.year - 1, now.month, now.day);

     
  final selectedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstdate,
        lastDate: now);
        if (selectedDate != null) {
    // ignore: use_build_context_synchronously
    Provider.of<Project>(context, listen: false).updateSelectedDate(selectedDate);
  }
  }
 

  @override
  Widget build(BuildContext context) {
    Project todos = Provider.of<Project>(context);
    final due = todos.selectedDate.toString();
    TextEditingController dt = TextEditingController(text:due);
    //Project due = Provider.of<Project>(context).updateSelectedDate(selectedDate);
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
            
        actions: [Icon(Icons.arrow_drop_down_circle)],
      ),
      body: 
      
      
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
            const Center(child: Text('Create New Task',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30 ),)),
            const SizedBox(
              height: 20,
            ),
             const Text('Title',style: TextStyle(color: Color.fromARGB(255, 205, 91, 91),),),
          const SizedBox(height: 20,),
              Flexible(
                child: TextField(
                  
                  controller: xl,
                    decoration: InputDecoration(border:  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                ),
                      
              ),
            
              const SizedBox(
              height: 5,
            ),
             const Text('Due Date',style: TextStyle(color: Color.fromARGB(255, 205, 91, 91)), ),
            const SizedBox(height: 20,),
             TextField(
                  controller: dt,
                    decoration: InputDecoration(border:  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                ),
            Flexible(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Consumer<Project>(builder: (context,selectedDate, _){
                    return IconButton(onPressed:_presentDatepicker , 
                    icon:const Icon(Icons.calendar_month)
                    // (selectedDate.selectedDate.toString()
                    );
                  
                  }
                  )
                  
                 // IconButton(onPressed: _presentDatepicker, icon:const Icon(Icons.calendar_month))
                ],
              )
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Discription',style: TextStyle(color: Color.fromARGB(255, 205, 91, 91)),),
          const SizedBox(height: 20,),
            Flexible(
              child: TextField(
                controller: Ml,
                decoration: InputDecoration(border:  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                maxLines: 2,
              ),
            ),
             const SizedBox(
              height: 30,
            ),
            Center(
              child: TextButton( 

                //style:const ButtonStyle(backgroundColor:  MaterialStatePropertyAll(Color.fromARGB(234, 173, 78, 78))),
                onPressed: () {
                  // ignore: unnecessary_null_comparison
                  if((xl.text!=null)){
                  todos.addTypes(ListOne(title:xl.text , discription: Ml.text));
                  Navigator.pop(context);
                  }
                },
                child: const Text('add task',style: TextStyle( color: Color.fromARGB(255, 243, 243, 243)), ),
                   
              ),
            ),
                   ]),
         ),
      
      );
  }
}
