import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/modal/provider_playList.dart';
import 'package:vplayer/modal/song.dart';
import 'package:vplayer/screens/core/home_screen/widget/new_box.dart';

class Now_Playing_Screen extends StatefulWidget {
  const Now_Playing_Screen({super.key});

  @override
  State<Now_Playing_Screen> createState() => _Now_Playing_ScreenState();
}

class _Now_Playing_ScreenState extends State<Now_Playing_Screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {

        final  playList = value.playlists;
        final currentSongIndex = playList[value.currentsongIndex ?? 0];

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    'P L A Y  L I S T',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ],
              ),
              SizedBox(height: 20.h),
              // Displaying the current song image and details
              Neu_Box(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          height: 230.h,
                          currentSongIndex.albumArtImagePath,                    
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.w,
                        right: 15.w,
                        top: 15.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                currentSongIndex.songName,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                currentSongIndex.artistName,
                            
                              ),
                            ],
                          ),
                          Icon(Icons.favorite, color: Colors.red, size: 25.sp),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('0:00'),
                        Icon(Icons.shuffle),
                        Icon(Icons.repeat),
                        Text('0:00'),
                      ],
                    ),
                  ),

                  SliderTheme(
                    data: SliderThemeData().copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 0.r,
                      ),
                    ),
                    child: Slider(
                      min: 0,
                      max: 100,
                      value: 50,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Container(
                height: 50.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Neu_Box(child: Icon(Icons.skip_previous)),
                      ),
                    ),

                    SizedBox(width: 20.h),

                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {},
                        child: Neu_Box(child: Icon(Icons.play_arrow)),
                      ),
                    ),

                    SizedBox(width: 20.h),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Neu_Box(child: Icon(Icons.skip_next)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Row(
          //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //         Text(
          //           'Kabera',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //         ),
          //         ),
          //          Text(
          //           'Arijit Singh',
          //         // style: TextStyle(
          //         //   fontSize: 16,
          //         //   fontWeight: FontWeight.bold,
          //         // ),
          //         ),
          //         ],
          //       ), Icon(Icons.favorite, color: Colors.red, size: 30,),
          //     ],
          //   ),
          // )
        );
      },
    );
  }
}
