import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

import '../provider/provider.dart';

class BuildCardList extends ConsumerWidget {
  const BuildCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userProvider);
    return users != null
        ? Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = users[index];
                  return ResultCard(user: user);
                }),
          )
        : Container();
  }
}
