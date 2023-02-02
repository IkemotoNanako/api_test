import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../component/resultCard.dart';
import '../provider/provider.dart';

class BuildCardList extends ConsumerWidget {
  const BuildCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userProvider);
    return users.isNotEmpty // <- users.length.isNotEmpty のほうが明瞭
        ? Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = users[index];
                  return ResultCard(user: user);
                }),
          )
        : const Expanded(child: Center(child: Text("検索ワードを変えてください")));
  }
}
