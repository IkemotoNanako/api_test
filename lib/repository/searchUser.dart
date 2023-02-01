import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../core/githubUser.dart';
import '../provider/provider.dart';

final searchUsersProvider = FutureProvider<List<GithubUser>>((ref) async {
  final flag = ref.watch(organizationFlagProvider);
  final searchWord = ref.watch(searchWordProvider);
  if (searchWord != "") {
    try {
      var response;
      if (flag == true) {
        response = await http.get(Uri.https('api.github.com', '/search/users', {
          'q': searchWord + "type:org",
          'sort': 'followers',
        }));
      } else {
        response = await http.get(Uri.https('api.github.com', '/search/users',
            {'q': searchWord, 'sort': 'followers'}));
      }
      switch (response.statusCode) {
        case 200:
          List<GithubUser> list = [];
          Map<String, dynamic> decoded = json.decode(response.body);
          for (var item in decoded['items']) {
            list.add(GithubUser.fromJson(item));
          }
          return list;
        default:
          ref.watch(codeProvider.notifier).update((state) => state = 1);
          return [];
      }
    } on SocketException catch (_) {
      ref.watch(codeProvider.notifier).update((state) => state = 2);
      return [];
    }
  } else {
    return [];
  }
});
