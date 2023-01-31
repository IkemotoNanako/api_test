import 'package:api_test/importer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../core/githubUser.dart';
import '../provider/provider.dart';

final searchUsersProvider = FutureProvider<List<GithubUser>>((ref) async {
  final flag = ref.watch(organizationFlagProvider);
  final response;
  if (flag == true) {
    response = await http.get(Uri.https('api.github.com', '/search/users', {
      'q': ref.watch(searchWordProvider),
      'sort': 'followers',
      'type': 'Organizer'
    }));
  } else {
    response = await http.get(Uri.https('api.github.com', '/search/users',
        {'q': ref.watch(searchWordProvider), 'sort': 'followers'}));
  }
  if (response.statusCode == 200) {
    List<GithubUser> list = [];
    Map<String, dynamic> decoded = json.decode(response.body);
    for (var item in decoded['items']) {
      list.add(GithubUser.fromJson(item));
    }
    return list;
  } else {
    throw Exception('Fail to search repository');
  }
});
