

import 'package:desafio_mobile/controllers/app.controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final controller = AppController();
  String text;
  List posts = [];
  test('Create Post', () async {
    var post = controller.createPost(text);

    expect(post.contains('text'), text);
  });

  test('Loading Post', () async {
    var post = controller.createPost(text);
    posts.add(post);
    expect(post.contains('id'), posts.contains('id'));
  });

  test('Delete Post', () async {
    var post = controller.createPost(text);
    expect(controller. deletePost(post.id));
  })
}
