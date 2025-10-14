import 'package:flutter/material.dart';
import 'package:number_guesser/body.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 15, 133, 33),
            Color.fromARGB(255, 47, 180, 23)
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 400,
                width: 370,
                child: Card(
                  color: const Color.fromARGB(255, 58, 233, 84),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'It\'s $result !',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 69, 255, 97),
                    foregroundColor: const Color.fromARGB(255, 58, 87, 63)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Body(),
                      ));
                },
                child: const Text('Guess Again'))
          ],
        ),
      ),
    );
  }
}
