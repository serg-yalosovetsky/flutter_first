import 'package:first/widgets/profile_screen.dart';
import 'package:first/widgets/settings_screen.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Widget> menu_navi = [];

    var header_decor = BoxDecoration(
      color: Colors.green,
      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/cover.jpg'),
          )
    );
    var header_style = TextStyle(color: Colors.white, fontSize: 25);

    var header_tile = DrawerHeader(
      child: Text(
        'Side menu',
        style: header_style,
      ),
      decoration: header_decor,
    );
    var welcome_tile =  ListTile(
    leading: Icon(Icons.input),
    title: Text('Welcome'),
    onTap: () => {},
    );
    var profile_tile = ListTile(
    leading: Icon(Icons.verified_user),
    title: Text('Profile'),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile_Screen()),
        )
      },
    );
    var settings_tile = ListTile(
    leading: Icon(Icons.settings),
    title: Text('Settings'),
    onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings_Screen()),
                )
            },
    );
    var feedback_tile = ListTile(
    leading: Icon(Icons.border_color),
    title: Text('Feedback'),
    onTap: () => {Navigator.of(context).pop()},
    );
    var Logout_tile = ListTile(
    leading: Icon(Icons.exit_to_app),
    title: Text('Logout'),
    onTap: () => {Navigator.of(context).pop()},
    );

    menu_navi.addAll([
      header_tile,
      welcome_tile,
      profile_tile,
      settings_tile,
      feedback_tile,
      Logout_tile,
    ]);


    var drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: menu_navi,
      ),
    );

    return drawer;
  }
}