import 'dart:convert';

import 'package:desafio_mobile/interfaces/posts_repository_interface.dart';
import 'package:desafio_mobile/models/post_models.dart';
import 'package:http/http.dart' as http;

class PostRepository implements IPostRepository {
  List<Posts> listPosts = [];

  Future<List<Posts>> getPosts() async {
    await Future.delayed(new Duration(milliseconds: 1500));
    final Uri url =
        Uri.https('run.mocky.io', '/v3/29ca1a88-ec02-44aa-9d26-214983b174a9');

    var res = await http.get(url);

    if (res.statusCode == 200) {
      var decodeJson = jsonDecode(res.body)['Result'];
      decodeJson.forEach((item) => listPosts.add(Posts.fromJson(item)));

      return listPosts;
    } else {
      throw Exception('Erro ao buscar posts');
    }
  }
}
