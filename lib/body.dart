import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.yellow
        ),
        child: Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: Card(
              color: Colors.amber,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: input,
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Number :)'
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),);
  }
}