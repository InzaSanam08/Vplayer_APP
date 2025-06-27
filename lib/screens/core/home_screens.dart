import 'package:flutter/material.dart';
import 'package:vplayer/screens/core/home_screen/widget/mydrawer.dart';

class Playlist_Screen extends StatefulWidget {
  const Playlist_Screen({super.key});

  @override
  State<Playlist_Screen> createState() => _Playlist_ScreenState();
}

class _Playlist_ScreenState extends State<Playlist_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('P L A Y  L I S T'),
      
      ),drawer: MyDrawer(),
      body: Center(
        child: Text(
          'Playlist Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}