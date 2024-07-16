import 'package:flutter/material.dart';

class MyButtonPage extends StatefulWidget {
  const MyButtonPage({super.key});

  @override
  State<MyButtonPage> createState() => _MyButtonPageState();
}

class _MyButtonPageState extends State<MyButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My button Page'),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('My Button Page'),
            Text('Navigated using plugin successfully...')
          ],
        ),
      ),
    );
  }
}