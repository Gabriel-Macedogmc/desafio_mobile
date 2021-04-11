import 'package:desafio_mobile/utils/constants.dart';
import 'package:desafio_mobile/views/create_post/components/body.dart';

import 'package:flutter/material.dart';

class CreatePostView extends StatefulWidget {
  @override
  _CreatePostViewState createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
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
          backgroundColor: Color(0xFF019EE5),
          centerTitle: true,
          title: Text('Postar'),
        ),
        body: Body(),
      ),
    );
  }
}
