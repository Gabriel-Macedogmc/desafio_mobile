import 'package:flutter/material.dart';

class DefaultButtonAdd extends StatelessWidget {
  const DefaultButtonAdd({
    Key key,
    this.route,
    this.icon,
  }) : super(key: key);

  final String route;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () {
          return Navigator.pushNamed(context, route);
        },
        child: Icon(icon),
      ),
    );
  }
}
