import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/modal/provider_playList.dart';
import 'package:vplayer/modal/song.dart';
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
        title: const Text(' L A Y  L I S T ' , style: TextStyle(fontWeight: FontWeight.bold),),
      
      ),drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(builder: (context, value, child) {
      
      final List<Song> playList = value.playlists; 
       return ListView.builder(
          itemCount:playList.length,
          itemBuilder: (context, index) {
            final Song song = playList[index];
            return ListTile(
              title: Text(
                song.songName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                song.artistName,
                style: const TextStyle(fontSize: 16),
              ),
              leading:Image.asset(song.albumArtImagePath, 
              // fit: BoxFit.cover, width: 50, height: 50
              ),  
            
            );
          },
        ); 
      }),
    );
  }
}