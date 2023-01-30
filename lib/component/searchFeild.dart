import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

import '../provider/provider.dart';

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
      onChanged: (text) {
        if (text.length >= 5) {
          searchUsers(text).then((users) {
            ref.watch(userProvider.state).update((state) => state = users);
            print(text);
          });
        }
      },
    );
  }
}
