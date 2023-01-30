import 'package:api_test/importer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<GithubUser>> searchUsers(String searchWord) async {
  final response = await http.get(Uri.https(
      'api.github.com', '/search/users', {'q': searchWord, 'sort': 'stars'}));
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
}
