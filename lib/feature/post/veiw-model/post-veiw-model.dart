import 'dart:io';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:dio/dio.dart';
import 'package:fluttermobx/feature/post/model/post.dart';
import 'package:mobx/mobx.dart';
part 'post-veiw-model.g.dart';

class PostVeiwModel = _PostVeiwModelBase with _$PostVeiwModel;

abstract class _PostVeiwModelBase with Store {
  @observable
  bool isLoading = false;

  @observable
  List<Post> posts = [];

  final url = "https://jsonplaceholder.typicode.com/posts";

  @action
  Future <dynamic> getAllPost() async {
    changeRequest();
    final response = await Dio().get(url);
    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => Post.fromMap(e)).toList();
    }
    changeRequest();
  }

  @action
  void changeRequest() {
    isLoading = !isLoading;
  }
}
