import 'package:flutter/material.dart';
import 'Learn_Flutter_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const LearnFlutterPage();
            }),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}







