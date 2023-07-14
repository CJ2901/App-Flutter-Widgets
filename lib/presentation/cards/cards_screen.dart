import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const routeName = '/cards';
  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('CardsScreen'),
      ),
    );
  }
}