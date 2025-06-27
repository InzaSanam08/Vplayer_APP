import 'package:flutter/material.dart';
import 'package:vplayer/modal/song.dart';

class PlaylistProvider extends ChangeNotifier {

final List<Song> _playlists = [
 
//  1
 
  Song(
    songName: 'Veham',
    artistName: 'Sidhu Moose wala',
    albumArtImagePath: 'lib/utills/app_images/veham.jpg',
    audioPath: 'lib/utills/songs/VEHAM.mp3',
  ),

// 2


   Song(
    songName: 'Limits',
    artistName: 'Sidhu Moose wala',
    albumArtImagePath: 'lib/utills/app_images/limits.jpg',
    audioPath: 'lib/utills/songs/LIMITS.mp3',
  ),


// 3

   Song(
    songName: 'Bukcle Up',
    artistName: 'Shubh',
    albumArtImagePath: 'lib/utills/app_images/buckle up.jpg',
    audioPath: 'lib/utills/songs/Buckle Up.mp3',
  ),


// 4

   Song(
    songName: 'Fell For You',
    artistName: 'Shubh',
    albumArtImagePath: 'lib/utills/app_images/fell fo you.jpg',
    audioPath: 'lib/utills/songs/FellForYou.mp3',
  ),

// 5

   Song(
    songName: 'Listen',
    artistName: 'Sidhu Moose wala',
    albumArtImagePath: 'lib/utills/app_images/listen.jpg',
    audioPath: 'lib/utills/songs/listen.mp3',
  ),

// 6
   Song(
    songName: 'Supreme',
    artistName: 'Shubh',
    albumArtImagePath: 'lib/utills/app_images/supreme.jpg',
    audioPath: 'lib/utills/songs/Supreme.mp3',
  ),

// 7
   Song(
    songName: 'Todh',
    artistName: 'Sidhu Moose wala',
    albumArtImagePath: 'lib/utills/app_images/todh.jpg',
    audioPath: 'assets/audio/song_1.mp3',
  ),

 
];

int? _currentsongIndex;


List<Song> get playlists => _playlists;

int? get currentsongIndex => _currentsongIndex;

set currentsongIndex(int? newindex) {
  _currentsongIndex = newindex;
  notifyListeners();



}}