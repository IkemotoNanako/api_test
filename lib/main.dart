import 'package:api_test/provider/provider.dart';
import 'package:api_test/view/top.dart';
import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var flag = ref.watch(codeProvider);
    return Scaffold(body: pages(flag));
  }
}

Widget pages(flag) {
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
    default:
      return Top();
  }
}
