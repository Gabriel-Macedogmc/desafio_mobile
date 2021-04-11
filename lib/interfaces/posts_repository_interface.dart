import 'package:desafio_mobile/models/post_models.dart';

abstract class IPostRepository {
  Future<List<Posts>> getPosts();
}
