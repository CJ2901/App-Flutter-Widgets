import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String routeName = 'cards_screen';

  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('CardsScreen'),
          centerTitle: true,
      ),
      body: const Center(
         child: Text('CardsScreen'),
      ),
    );
  }
}