import 'package:get/get.dart';
import 'package:flutter/material.dart';
class NewBody extends StatefulWidget {
  const NewBody({ Key? key }) : super(key: key);

  @override
  State<NewBody> createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
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
              Center(
                child: Row(
          children: [Text(" The Hobbit \n  Bilbo Baggins lives a quiet, \n peaceful life in his comfortable hole at Bag End. Bilbo lives in a hole because he is a hobbit—one of a race of small, \nplump people about half the size of humans, with furry toes and\n a great love of good food and drink.\n Bilbo is quite content at Bag End, near the bustling hobbit village of Hobbiton, \nbut one day his comfort is shattered by the arrival of the old wizard Gandalf,\n who persuades Bilbo to set out on an adventure with a group of thirteen militant dwarves. \nThe dwarves are embarking on a great quest to reclaim their treasure from the marauding dragon Smaug, \nand Bilbo is to act as their “burglar.” \nThe dwarves are very skeptical about Gandalf’s choice for a burglar,\n and Bilbo is terrified to leave his comfortable life to seek adventure. \nBut Gandalf assures both Bilbo and the dwarves that there is more to the little hobbit than meets the eye.")],
                ),
              ),
              ],
              ),
              ),],),

      
      
    );
  }
}
