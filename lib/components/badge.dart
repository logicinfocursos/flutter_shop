import 'package:flutter/material.dart';

class Badge2 extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const Badge2({
    Key? key,
    required this.child,
    required this.value,
    this.color,
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[
        child,
        Positioned(
          right: 4,
          top: 2,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.redAccent,
            ),
            constraints: BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
            child: Text(
              value, 
              textAlign: TextAlign.center,
              style:TextStyle(fontSize:10, color: Colors.white)),
          ))
    ]
    );
  }
}
