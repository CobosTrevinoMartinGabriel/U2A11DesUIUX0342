import 'package:flutter/material.dart';

class Listsa extends StatelessWidget {
  final String src;
  final String txt1;
  final String txt2;
  const Listsa(
      {Key? key, required this.src, required this.txt1, required this.txt2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Color(0xff079cff),
              borderRadius: BorderRadius.circular(15)),
          child: Image.network(src),
        ),
        SizedBox(
          width: 10,
        ),
        Column(children: [
          Text(
            txt1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(txt2)
        ]),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.arrow_forward_ios)
      ]),
    );
  }
}
