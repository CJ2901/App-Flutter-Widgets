import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const routeName = '/buttons';
  const ButtonsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('ButtonsScreen'),
      ),
    );
  }
}