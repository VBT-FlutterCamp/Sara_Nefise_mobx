// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-veiw-model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostVeiwModel on _PostVeiwModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_PostVeiwModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$postsAtom = Atom(name: '_PostVeiwModelBase.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostVeiwModelBase.getAllPost');

  @override
  Future<dynamic> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$_PostVeiwModelBaseActionController =
      ActionController(name: '_PostVeiwModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostVeiwModelBaseActionController.startAction(
        name: '_PostVeiwModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostVeiwModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
posts: ${posts}
    ''';
  }
}
