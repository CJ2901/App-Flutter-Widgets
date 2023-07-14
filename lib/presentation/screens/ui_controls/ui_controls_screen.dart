import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const String routeName = 'ui_controls_screen';
  const UIControlsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('UIControlsScreen'),
      ),
    );
  }
}