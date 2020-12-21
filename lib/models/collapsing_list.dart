import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  bool isSelected = false;
  final Function onTap;
  final TextStyle textStyle;

  CollapsingListTile(
      {Key key, this.title, this.icon, this.onTap, this.textStyle, this.isSelected})
      : super(key: key);

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          color: (widget.isSelected)
              ? Colors.transparent.withOpacity(1)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.isSelected ? Colors.pink : Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: (widget.isSelected) ? Colors.pink : Colors.white,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
