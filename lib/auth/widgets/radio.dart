import 'package:flutter/material.dart';

class RadioCustome extends StatefulWidget {
  int value;
  int groupValue;
  String textValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;
  RadioCustome(
      {required this.value,
      required this.textValue,
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
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.value == widget.groupValue
                    ? Colors.green
                    : Colors.transparent,
                border: Border.all(
                    color: widget.value == widget.groupValue
                        ? Colors.transparent
                        : Colors.grey)),
            child: const Icon(
              Icons.check,
              size: 13,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(widget.textValue)
        ],
      ),
    );
  }
}
