import 'package:flutter/material.dart';
import 'package:vplayer/screens/core/home_screen/widget/new_box.dart';

class Now_Playing_Screen extends StatefulWidget {
  const Now_Playing_Screen({super.key});

  @override
  State<Now_Playing_Screen> createState() => _Now_Playing_ScreenState();
}

class _Now_Playing_ScreenState extends State<Now_Playing_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'N O W  P L A Y I N G',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(child: Neu_Box(child: Icon(Icons.search,size: 100,)),)
    );
  }
}