import 'package:flutter/material.dart';
import 'package:vplayer/modal/song.dart';

class PlaylistProvider extends ChangeNotifier {

final List<Song> _playlists = [
  Song(
    songName: 'kabira',
    artistName: 'Arijit Singh',
    albumArtImagePath: 'lib/utills/app_images/arijit.jpg',
    audioPath: 'assets/audio/song_1.mp3',
  ),
 
];

int? _currentsongIndex;
List<Song> get playlists => _playlists;
int? get currentsongIndex => _currentsongIndex;
set currentsongIndex(int? index) {
  _currentsongIndex = index;
  notifyListeners();



}}