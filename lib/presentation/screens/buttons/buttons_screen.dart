import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';
  
  const ButtonsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ButtonsScreen'),
          centerTitle: true,
      ),
      body: const Center(
         child: Text('ButtonsScreen'),
      ),
    );
  }
}