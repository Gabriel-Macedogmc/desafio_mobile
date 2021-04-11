import 'package:desafio_mobile/models/post_models.dart';
import 'package:desafio_mobile/controllers/app.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'card_list_component.dart';

class ListViewComponent extends StatefulWidget {
  const ListViewComponent({
    Key key,
  }) : super(key: key);

  @override
  _ListViewComponentState createState() => _ListViewComponentState();
}

class _ListViewComponentState extends State<ListViewComponent> {
  final controller = AppController();

  @override
  void initState() {
    super.initState();
    controller.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    final postsAPi = controller.listPost;
    final postsUser = controller.mockPost;

    print('Posts User $postsUser');
    print('Posts API $postsAPi');

    return ListPost(postsApi: postsAPi, postsUser: postsUser);
  }
}

class ListPost extends StatelessWidget {
  const ListPost({
    Key key,
    @required this.postsApi,
    @required this.postsUser,
    this.store,
  }) : super(key: key);

  final List<Posts> postsUser;
  final AppController store;
  final List<Posts> postsApi;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: [
        Observer(builder: (_) {
          return postsApi != null
              ? ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: postsApi.length,
                  itemBuilder: (ctx, index) {
                    final listApi = postsApi[index];
                    return CardList(
                        autorNome: listApi.autorNome,
                        data: listApi.dataHora,
                        texto: listApi.texto);
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        }),
        SizedBox(height: 10),
        Observer(builder: (_) {
          return ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: postsUser.length,
            itemBuilder: (ctx, index) {
              final listUser = postsUser[index];
              return GestureDetector(
                onTap: () {
                  store.deletePost(postsUser[index].id);
                },
                child: CardList(
                  autorNome: listUser.autorNome,
                  data: listUser.dataHora,
                  texto: listUser.texto,
                ),
              );
            },
          );
        }),
      ],
    );
  }
}
