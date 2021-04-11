import 'package:desafio_mobile/components/default_button_add.dart';
import 'package:desafio_mobile/utils/app_routes.dart';
import 'package:desafio_mobile/utils/constants.dart';
import 'package:desafio_mobile/views/list_posts/components/body.dart';
import 'package:flutter/material.dart';

class ListPostsView extends StatefulWidget {
  @override
  _ListPostsViewState createState() => _ListPostsViewState();
}

class _ListPostsViewState extends State<ListPostsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: kPrimaryGrandientColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF019EE5),
          centerTitle: true,
          title: Text(
            'Postagens',
          ),
        ),
        body: Stack(
          children: [
            Body(),
            DefaultButtonAdd(
              route: AppRoutes.CREATE_POST,
              icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}
