import 'package:flutter/cupertino.dart';

class FieldCustome extends StatefulWidget {
  String? btnName;
  FieldCustome({required this.btnName, Key? key}) : super(key: key);

  @override
  State<FieldCustome> createState() => _FieldCustomeState();
}

class _FieldCustomeState extends State<FieldCustome> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: "${widget.btnName}",
      padding: const EdgeInsets.symmetric(vertical: 20),
      prefix:const  Padding(padding: EdgeInsets.only(left: 5),
      child: Text('   '),),
    );
  }
}
