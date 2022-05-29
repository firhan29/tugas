import 'package: flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Listview(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("firhan"),
          CurrentAccountPicture:
              CircleAvatar(backgroundImage: AssetImage("assets/img/hilmy.jpg")),
          accountEmail: Text("firhan.084020016@unpak.ac.i"),
        ),
        DrawerListTile(
          iconData: Icons.group,
          title: "NewGroup",
          onTilepressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.lock,
          title: "New Secret Group",
          onTilepressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.notifications,
          title: "New Channel Chat",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.contacts,
          title: "contacts",
          onTilepressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.bookmark_border,
          title: "Saved Message",
          onTilepressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.phone,
          title: "Calls",
          onTilepressed: () {},
        )
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilepressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilepressed})
      : super(key: key);
  @override
  Widget build(Buildcontext context) {
    return ListTile(
      onTap: onTilepressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}