import 'package:flutter/material.dart';

class NavigationModel {

  String title;
  IconData icon;
  Action onNavigationSelection;

  NavigationModel({@required this.title, @required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(icon: Icons.home_rounded, title: "Home"),
  NavigationModel(icon: Icons.dashboard_rounded, title: "Tasks"),
  NavigationModel(icon: Icons.info_rounded, title: "Projects"),
];
