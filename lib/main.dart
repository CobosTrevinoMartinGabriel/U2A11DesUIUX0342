import 'package:flutter/material.dart';
import 'package:cobos0342/pags/init.dart';

void main() => runApp(ActXI());

class ActXI extends StatelessWidget {
  const ActXI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
      debugShowCheckedModeBanner: false,
      home: init(),
    );
  }
}
