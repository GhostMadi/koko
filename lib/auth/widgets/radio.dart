import 'package:flutter/material.dart';

class RadioCustome extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;
  RadioCustome(
      {required this.value,
      required this.groupValue,
      this.color = Colors.green,
      this.selectColor = Colors.grey,
      this.onChanged,
      Key? key})
      : super(key: key);

  @override
  State<RadioCustome> createState() => _RadioCustomeState();
}

class _RadioCustomeState extends State<RadioCustome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: 20,
        width: 20,
        child: Icon(
          Icons.check,
          size: 13,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.value == widget.groupValue
                ? Colors.green
                : Colors.transparent,
            border: Border.all(
                color: widget.value == widget.groupValue
                    ? Colors.transparent
                    : Colors.grey)),
      ),
    );
  }
}
