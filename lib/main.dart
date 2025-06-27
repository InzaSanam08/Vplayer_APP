import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vplayer/modal/provider_playList.dart';
import 'package:vplayer/provideer/theme_provider.dart';
import 'package:vplayer/screens/core/home_screen/home_screens.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(_)=>ThemeProvider(),),
     ChangeNotifierProvider(create: (_)=>PlaylistProvider())

  ],child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Playlist_Screen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
    }
    );
  }
}