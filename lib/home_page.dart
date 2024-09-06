import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference our box
  var _myBox = Hive.box('myBox');

  // write data
  void writeData() {
    _myBox.put(1, 'Hammad');
  }

  // read data
  void readData() {
    
  }

  // delete data
  void deleteData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hive X Flutter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blueAccent,
              child: const Text('Write'),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.greenAccent,
              child: const Text('Read'),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.redAccent,
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
