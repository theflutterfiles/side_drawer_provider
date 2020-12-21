import 'package:flutter/material.dart';
import 'package:flutter_app_mindful_lifting/models/collapsing_list.dart';
import 'package:flutter_app_mindful_lifting/models/navigation_model.dart';
import 'package:flutter_app_mindful_lifting/notifiers/menu_drawer_notifier.dart';
import 'package:provider/provider.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState
    extends State<CollapsingNavigationDrawer> {
  
  //1
  int currentSelectedIndex;

  @override
  void initState() {
    super.initState();
    MenuDrawerNorifier menuDrawerNorifier =
        Provider.of<MenuDrawerNorifier>(context, listen: false);
    currentSelectedIndex = menuDrawerNorifier.getCurrentDrawer;
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Provider.of<MenuDrawerNorifier>(context, listen: false);

   //2
    return Container(
      width: 250,
      color: Colors.blue,
      child: ListView.builder( //3
        itemBuilder: (context, index) {
          return CollapsingListTile(
            onTap: () {
              switch (index) {
                case 0:
                  drawer.setCurrentDrawer(0);
                  //4
                  Navigator.popAndPushNamed(context, "home");
                  break;
                case 1:
                  drawer.setCurrentDrawer(1);
                  Navigator.popAndPushNamed(context, "tasks");
                  break;
                case 2:
                  drawer.setCurrentDrawer(2);
                  Navigator.popAndPushNamed(context, "projects");
                  break;
              }
            },
            //5
            title: navigationItems[index].title,
            isSelected: currentSelectedIndex == index,
            icon: navigationItems[index].icon,
          );
        },
        //
        itemCount: navigationItems.length,
      ),
    );
  }
}
