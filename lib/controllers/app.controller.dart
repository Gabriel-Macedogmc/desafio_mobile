import 'dart:math';

import 'package:desafio_mobile/models/post_models.dart';
import 'package:desafio_mobile/repositories/posts_repository.dart';

import 'package:mobx/mobx.dart';
part 'app.controller.g.dart';

class AppController = _AppController with _$AppController;

abstract class _AppController with Store {
  PostRepository _postRepository;

  _AppController() {
    _postRepository = PostRepository();
  }

  @observable
  ObservableList<Posts> listPost = ObservableList<Posts>();

  @observable
  ObservableList<Posts> mockPost = ObservableList<Posts>();

  @observable
  ObservableList<String> errors = ObservableList<String>();

  @action
  addError({String error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  @action
  removeError({String error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  @action
  loadPosts() async {
    listPost = ObservableList<Posts>.of(await _postRepository.getPosts());
  }

  @action
  createPost(String text) {
    final post = Posts(
      id: Random().nextDouble().toString(),
      autorNome: 'John Doe',
      dataHora: '25/12',
      texto: text,
    );
    mockPost.add(post);
  }

  @action
  deletePost(String id) {
    mockPost.removeWhere((post) => post.id == id);
  }
}
