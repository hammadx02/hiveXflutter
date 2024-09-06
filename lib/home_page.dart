import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive X Flutter'),
      ),
      body: Row(
        children: [
          MaterialButton(
            onPressed: () {},
            color: Colors.blueAccent,
            child: const Text('Write'),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.greenAccent,
            child: const Text('Read'),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.redAccent,
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
