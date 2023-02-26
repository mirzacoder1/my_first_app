import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://t4.ftcdn.net/jpg/04/42/01/81/360_F_442018137_F4FTedsmVBxmaibxMKuNbeIms8Xkk1e4.jpg";
    var userAccountsDrawerHeader = UserAccountsDrawerHeader(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          // color: Colors.deepPurple,
          ),
      accountName: Text(
        "Mirza Zabbar",
        style:TextStyle(
          color:Colors.white,
        ),
        textScaleFactor: 1.1,
      ),
      accountEmail: Text(
        "mirzazabbar654@gmail.com",
        style:TextStyle(
          color:Colors.white,
        ),
        textScaleFactor: 1.1,
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: userAccountsDrawerHeader,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
