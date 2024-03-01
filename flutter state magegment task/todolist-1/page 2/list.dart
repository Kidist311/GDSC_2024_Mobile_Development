import 'package:uuid/uuid.dart';

const uuid = Uuid();



class ListOne {
  ListOne({required this.title,required this.discription})
      : id = uuid.v4();

  final String title;
  final String id;
  final String discription;

}
