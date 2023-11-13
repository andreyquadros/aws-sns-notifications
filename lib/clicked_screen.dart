import 'package:flutter/material.dart';

class ClickedScreen extends StatefulWidget {
  const ClickedScreen({Key? key}) : super(key: key);

  @override
  State<ClickedScreen> createState() => _ClickedScreenState();
}

class _ClickedScreenState extends State<ClickedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blueAccent,
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Clicked Page', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You got here because you clicked in notification or app-message')
        ],
      ),
    );
  }
}
