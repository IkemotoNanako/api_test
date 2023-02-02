import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/provider.dart';
import '../repository/searchUser.dart';

class SearchField extends ConsumerWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: '探したいユーザー名を入力',
          labelText: "検索"),
      onChanged: (text) async {
        /// この処理は一つの関数としてまとめられそうな気がする。
        /// 束ねることができるのもRiverpodのいいところ。
        ref.watch(searchWordProvider.notifier).update((state) => state = text);

        /// readのほうがいいかも
        final users = await ref.watch(searchUsersProvider.future);

        ref.watch(userProvider.notifier).update((state) => state = users);
      },
    );
  }
}
