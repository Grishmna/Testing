import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(
              'images/einstein.JPG',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'this is a text widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
             backgroundColor:isSwitch ? Colors.green : Colors.blue
            ),
            onPressed: () {
              debugPrint('elevated button');
            },
            child: const Text('elevated button'),
          ),
          const SizedBox(width: 36),
          OutlinedButton(
            onPressed: () {
              debugPrint('outlined button');
            },
            child: const Text('outlined button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text button');
            },
            child: const Text('Text button'),
          ),
          GestureDetector(
            behavior:HitTestBehavior.opaque ,
            onTap: () {
              debugPrint('this is row');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text('row widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Switch(value: isSwitch, onChanged: (bool newBool) {
           setState(() {
            isSwitch=newBool;
             
           }); 
          } )
        ],
      ),
    );
  }
}