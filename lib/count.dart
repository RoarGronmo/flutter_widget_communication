import 'package:flutter/material.dart';

class Count extends StatefulWidget{
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChanged;

  const Count(
      {Key? key,
        required this.count,
        required this.onCountChanged,
        required this.onCountSelected,
      }):super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            widget.onCountChanged(1);
          },
        ),
        TextButton(
          child: Text("${widget.count}"),
          onPressed: () => widget.onCountSelected(),
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            widget.onCountChanged(-1);
          },
        ),
      ],
    );

  }
}