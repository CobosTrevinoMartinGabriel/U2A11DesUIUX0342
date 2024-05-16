import 'package:flutter/material.dart';

class MyCarta extends StatelessWidget {
  final double money;
  final String metodo;
  final color;
  const MyCarta(
      {Key? key,
      required this.money,
      required this.metodo,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(7)),
          child: Column(children: [
            Text("Saldo actual"),
            Text(
              "\$" + this.money.toString(),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Row(
              children: [Text("Metodo:"), Text(this.metodo)],
            )
          ]),
        ));
  }
}
