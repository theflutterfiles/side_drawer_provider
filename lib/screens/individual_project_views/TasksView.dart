import 'package:flutter/material.dart';
import 'package:flutter_app_mindful_lifting/models/side_drawer.dart';

class TasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: 40,
                color: Colors.black,
              ),
              color: Colors.black,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ),
      drawer: CustomSideDrawer(),
      body: Container(
        child: Text("TASKS PAGE"),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
