import 'package:desafio_mobile/controllers/app.controller.dart';
import 'package:desafio_mobile/theme.dart';
import 'package:desafio_mobile/utils/app_routes.dart';
import 'package:desafio_mobile/views/create_post/create_post_view.dart';
import 'package:desafio_mobile/views/list_posts/list_posts_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppController>.value(
          value: AppController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        initialRoute: AppRoutes.HOME,
        routes: {
          AppRoutes.HOME: (ctx) => ListPostsView(),
          AppRoutes.CREATE_POST: (ctx) => CreatePostView(),
        },
      ),
    );
  }
}
