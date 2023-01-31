import 'package:api_test/core/githubUser.dart';
import 'package:api_test/importer.dart';

final StateProvider<List<GithubUser>> userProvider = StateProvider((ref) => []);
final organizationFlagProvider = StateProvider((ref) => false);
final searchWordProvider = StateProvider((ref) => '');
