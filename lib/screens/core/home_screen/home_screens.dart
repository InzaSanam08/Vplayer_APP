import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/modal/provider_playList.dart';
import 'package:vplayer/modal/song.dart';
import 'package:vplayer/screens/core/home_screen/song_play_screen.dart';
import 'package:vplayer/screens/core/home_screen/widget/mydrawer.dart';

class Playlist_Screen extends StatefulWidget {
  const Playlist_Screen({super.key});

  @override
  State<Playlist_Screen> createState() => _Playlist_ScreenState();
}

class _Playlist_ScreenState extends State<Playlist_Screen> {



late final dynamic playlistProvider;
@override
  void initState() {
  playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

void gotosong(int songIndex,  ){
  playlistProvider.currentsongIndex = songIndex;

Navigator.push(context, MaterialPageRoute(builder: (context) => Now_Playing_Screen()));

}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('P L A Y  L I S T ' , style: TextStyle(fontWeight: FontWeight.bold),),
      
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
              leading:Container(
                child: Image.asset(song.albumArtImagePath, 
                fit: BoxFit.contain, width: 70.w, height: 70.h
                ),
              ),
              onTap: () => gotosong(index,),

            );
          },
        ); 
      }),
    );
  }
}