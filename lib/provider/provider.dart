import 'package:api_test/core/githubUser.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<List<GithubUser>> userProvider = StateProvider((ref) => []);
final organizationFlagProvider = StateProvider((ref) => false);
final searchWordProvider = StateProvider((ref) => '');

/// 何を提供するProviderなのか、変数名だけで明確になっていたほうがよい。
final codeProvider = StateProvider((ref) => 0);
