
import 'package:flutter/material.dart';

class CustomeRadio extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? colorSelect;
  void Function(int?)? onChanged;
  CustomeRadio(
      {required this.value,
      required this.groupValue,
      this.color = Colors.white,
      this.colorSelect = Colors.grey,
      this.onChanged,
      Key? key})
      : super(key: key);

  @override
  State<CustomeRadio> createState() => _CustomeRadioState();
}

class _CustomeRadioState extends State<CustomeRadio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          setState(() {
            widget.onChanged!(widget.value);
          });
        }
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.value == widget.groupValue?Colors.green:Colors.transparent,
            border: Border.all(
                color: widget.value == widget.groupValue
                    ? Colors.green
                    : Colors.grey)),
        child:const  Icon(Icons.check,color: Colors.white,size: 15,),
        
      ),
    );
  }
}
