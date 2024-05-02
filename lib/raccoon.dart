import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Raccoon extends StatefulWidget {
  const Raccoon({super.key});

  @override
  State<Raccoon> createState() => _RaccoonState();
}

class _RaccoonState extends State<Raccoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(150),
          ),
        ),
      ),
    );
  }
}
