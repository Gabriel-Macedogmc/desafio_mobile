// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppController, Store {
  final _$listPostAtom = Atom(name: '_AppController.listPost');

  @override
  ObservableList<Posts> get listPost {
    _$listPostAtom.reportRead();
    return super.listPost;
  }

  @override
  set listPost(ObservableList<Posts> value) {
    _$listPostAtom.reportWrite(value, super.listPost, () {
      super.listPost = value;
    });
  }

  final _$mockPostAtom = Atom(name: '_AppController.mockPost');

  @override
  ObservableList<Posts> get mockPost {
    _$mockPostAtom.reportRead();
    return super.mockPost;
  }

  @override
  set mockPost(ObservableList<Posts> value) {
    _$mockPostAtom.reportWrite(value, super.mockPost, () {
      super.mockPost = value;
    });
  }

  final _$errorsAtom = Atom(name: '_AppController.errors');

  @override
  ObservableList<String> get errors {
    _$errorsAtom.reportRead();
    return super.errors;
  }

  @override
  set errors(ObservableList<String> value) {
    _$errorsAtom.reportWrite(value, super.errors, () {
      super.errors = value;
    });
  }

  final _$loadPostsAsyncAction = AsyncAction('_AppController.loadPosts');

  @override
  Future loadPosts() {
    return _$loadPostsAsyncAction.run(() => super.loadPosts());
  }

  final _$_AppControllerActionController =
      ActionController(name: '_AppController');

  @override
  dynamic addError({String error}) {
    final _$actionInfo = _$_AppControllerActionController.startAction(
        name: '_AppController.addError');
    try {
      return super.addError(error: error);
    } finally {
      _$_AppControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeError({String error}) {
    final _$actionInfo = _$_AppControllerActionController.startAction(
        name: '_AppController.removeError');
    try {
      return super.removeError(error: error);
    } finally {
      _$_AppControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic createPost(String text) {
    final _$actionInfo = _$_AppControllerActionController.startAction(
        name: '_AppController.createPost');
    try {
      return super.createPost(text);
    } finally {
      _$_AppControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deletePost(String id) {
    final _$actionInfo = _$_AppControllerActionController.startAction(
        name: '_AppController.deletePost');
    try {
      return super.deletePost(id);
    } finally {
      _$_AppControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPost: ${listPost},
mockPost: ${mockPost},
errors: ${errors}
    ''';
  }
}
