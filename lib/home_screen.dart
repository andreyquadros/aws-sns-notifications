import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blueAccent,
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Using AWS SNS Notification', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
