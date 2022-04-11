import 'package:flutter/material.dart';
import 'screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mail', style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ],
        ),
        drawer: DrawerWidget(),
        body: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            image: DecorationImage(image: AssetImage('img/background.jpg'), fit: BoxFit.cover),
          ),
        ));
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.move_to_inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => outbox()),
                );
              }),
          _drawerItem(
              icon: Icons.access_time_rounded,
              text: 'Spam',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => spam()),
                );
              }),
          _drawerItem(
              icon: Icons.forum_outlined,
              text: 'Forums',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => forum()),
                );
              }),
          _drawerItem(
              icon: Icons.feedback,
              text: 'Promos',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => promo()),
                );
              }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("img/Kurumi.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text("Teddy Latief Miftahur Rizqi", style: TextStyle(color: Colors.white)),
      accountEmail: Text("teddylatief0009@gmail.com", style: TextStyle(color: Colors.white)),
      decoration: const BoxDecoration(color: Colors.teal),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
