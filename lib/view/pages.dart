import 'package:api_test/view/top.dart';
import 'package:flutter/material.dart';

import '../importer.dart';
import '../provider/provider.dart';

final searchUsersProvider = FutureProvider((ref) async {
  var flag = ref.watch(codeProvider);
  switch (flag) {
    case 0:
      return Top();
    case 1:
      return Center(
        child: Text("不正なリクエストが送信されました"),
      );
    case 2:
      return Center(
        child: Text("検索中"),
      );
  }
});
