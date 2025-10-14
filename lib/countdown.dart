import 'package:flutter/material.dart';
import 'package:number_guesser/answer.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key, required this.result});

  final String result;

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  int count = 10;

  @override
  void initState() {
    super.initState();
    countdown();
  }

  void countdown() async {
    for (int i = 1; i < 10; i++) {
      setState(() {
        count--;
      });
      await Future.delayed(const Duration(seconds: 1));
    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Answer(
            result: widget.result,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 118, 14, 14),
            Color.fromARGB(255, 180, 23, 23)
          ]),
        ),
        child: Center(
          child: SizedBox(
            height: 400,
            width: 370,
            child: Card(
              color: const Color.fromARGB(255, 255, 59, 59),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Thinking...',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(count.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
