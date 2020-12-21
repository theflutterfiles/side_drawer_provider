import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  Action onNavigationSelection;

  NavigationModel({@required this.title, @required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(icon: Icons.home_rounded, title: "Home"),
  NavigationModel(icon: Icons.check, title: "Tasks"),
  NavigationModel(icon: Icons.person, title: "Projects"),
];
