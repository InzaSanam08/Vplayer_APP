import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/modal/provider_playList.dart';

class Now_Playing_Screen extends StatefulWidget {
  const Now_Playing_Screen({super.key});

  @override
  State<Now_Playing_Screen> createState() => _Now_Playing_ScreenState();
}

class _Now_Playing_ScreenState extends State<Now_Playing_Screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, watch, child) {
      return SafeArea(
        child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
             Text('P L A Y  L I S T'),
             IconButton(onPressed: (){}, icon: Icon(Icons.menu))      
        
                   ],
            )
          ],
        )
            ),
      );
    })
  }
}