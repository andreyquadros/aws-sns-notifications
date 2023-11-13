import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aws_notification/api/firebase_api.dart';

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
        title: Text('Using One Signal Notification', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
