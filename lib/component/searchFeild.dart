import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';
import '../provider/provider.dart';
import '../repository/searchUser.dart';

class SearchField extends ConsumerWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: '探したいユーザー名を入力',
          labelText: "検索"),
      onChanged: (text) async {
        ref.watch(searchWordProvider.notifier).update((state) => state = text);
        final users = await ref.watch(searchUsersProvider.future);
        ref.watch(userProvider.notifier).update((state) => state = users);
      },
    );
  }
}
