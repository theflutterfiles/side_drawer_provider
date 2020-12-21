import 'package:flutter/material.dart';
import 'package:flutter_app_mindful_lifting/models/custom_list_tile.dart';
import 'package:flutter_app_mindful_lifting/models/menu_model.dart';
import 'package:flutter_app_mindful_lifting/notifiers/menu_notifier.dart';
import 'package:provider/provider.dart';

class CustomSideDrawer extends StatefulWidget {
  @override
  _CustomSideDrawerState createState() => _CustomSideDrawerState();
}

int currentSelectedIndex;

class _CustomSideDrawerState extends State<CustomSideDrawer> {
  @override
  void initState() {
    MenuDrawerNotifier menuDrawerNotifier =
        Provider.of<MenuDrawerNotifier>(context, listen: false);
    currentSelectedIndex = menuDrawerNotifier.getCurrentDrawer;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Provider.of<MenuDrawerNotifier>(context, listen: false);

    return Container(
      width: 250,
      color: Colors.blue,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CustomListTile(
            onTap: () {
              switch (index) {
                case 0:
                  drawer.setCurrentDrawer(0);
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
            title: navigationItems[index].title,
            isSelected: currentSelectedIndex == index,
            icon: navigationItems[index].icon,
          );
        },
        itemCount: navigationItems.length,
      ),
    );
  }
}
