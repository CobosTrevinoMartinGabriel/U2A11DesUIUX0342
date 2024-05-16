import 'package:flutter/material.dart';

class MiBotongo extends StatelessWidget {
  final String src;
  final String name;
  const MiBotongo({Key? key, required this.src, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xffe8b200),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1)
              ]),
          child: Center(
            child: Image.network(src),
          ),
        ),
        SizedBox(height: 7),
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
