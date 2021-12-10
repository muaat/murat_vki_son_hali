import 'package:flutter/material.dart';

class bottombtn extends StatelessWidget {
bottombtn({@required this.color, @required this.text});
  final text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Column(
        children: [

          Text(text,style: ,),
        ],
      ),
    );
  }
}
