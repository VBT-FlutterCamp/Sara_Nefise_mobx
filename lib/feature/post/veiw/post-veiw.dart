// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../veiw-model/post-veiw-model.dart';

class PostVeiw extends StatelessWidget {
  final _veiwmodel = PostVeiwModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          _veiwmodel.getAllPost();
        }),
      ),
      body: Observer(builder: (_) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_veiwmodel.posts[index].title ?? 'hhhhhh'),
              subtitle: Text(_veiwmodel.posts[index].body ?? 'hhhhkkk'),
              trailing: Text(_veiwmodel.posts[index].userId.toString()),
            );
          },
          itemCount: _veiwmodel.posts.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        );
      }),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: const Text('VB10'),
      leading: Observer(builder: (_) {
        return Visibility(
          visible: _veiwmodel.isLoading,
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
      }),
    );
  }
}
