import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vplayer/screens/core/setting_screen/setting_screeen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,

      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 50,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w ,top: 25.h),
            child: ListTile(
              leading:Icon(Icons.home) ,
              title: Text('H O M E ',style: TextStyle(fontWeight: FontWeight.bold),),
              
              // onTap: ,
              onTap: (){Navigator.pop(context);},
            ),
          ),  Padding(
            padding: EdgeInsets.only(left: 25.w ,),
            child: ListTile(
              leading:Icon(Icons.settings) ,
              title: Text('S E T T I N G',style: TextStyle(fontWeight: FontWeight.bold),),
               // onTap: ,
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (Context)=>SettingPage()));},
            ),
          )
        ],
      ),
      
    );
  }
}
