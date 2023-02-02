import 'package:api_test/view/top.dart';
import 'package:flutter/material.dart';

/// 0, 1, 2 が何を示すのかわからない
/// このよううにするくらいなら、WidgetそのものをProvideする設計の方がわかりやすいかも。
Widget pages(flag) {
  switch (flag) {
    case 0:
      return const Top();
    case 1:
      return const Center(
        child: Text("不正なリクエストが送信されました"),
      );
    case 2:
      return const Center(
        child: Text("検索中"),
      );
    default:
      return const Top();
  }
}
